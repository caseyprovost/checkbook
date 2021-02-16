class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :accounts
  has_many :checks, through: :accounts

  validates :name, presence: true
  validates :username, :email, presence: true, uniqueness: true
  validates :password, confirmation: true, presence: true, on: :create
end
