class Group < ApplicationRecord
  belongs_to :user
  has_many :group_expenses
  has_many :expenses, through: :group_expenses

  validates :name, presence: true, uniqueness: { scope: :user }
  validates :icon, presence: true
end
