class User < ApplicationRecord
  validates :first_name, :email,  presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 3 }

  has_secure_password
  has_many :conversations, :foreign_key => :sender_id
  has_many :events, through: :jointables

  has_many :rents, dependent: :destroy
  has_many :sales, dependent: :destroy

  has_many :jointables, dependent: :destroy

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
