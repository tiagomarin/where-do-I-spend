class Expense < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_expenses

  validates :name, presence: true, uniqueness: { scope: :user }
  validates :amount, numericality: {only_float: true}
end
