class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #, :confirmable
  has_many :expenses, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :email, format: URI::MailTo::EMAIL_REGEXP
  validates :name, presence: true, length: { in: 3..25 }
end
