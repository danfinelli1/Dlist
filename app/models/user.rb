class User < ApplicationRecord
  has_secure_password
  has_many :sales, dependent: :destroy

  has_many :events, dependent: :destroy

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
