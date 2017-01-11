class User < ApplicationRecord

  validates :first_name, :email,  presence: true
  validates :email, uniqueness: true

  has_secure_password
  has_many :conversations, :foreign_key => :sender_id
  has_many :events, through: :jointables

  has_many :rents, dependent: :destroy
  has_many :sales, dependent: :destroy

  has_many :jointables, dependent: :destroy
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  ratyrate_rateable "rating"
  ratyrate_rater

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
