require 'rails_helper'

RSpec.describe "group_expenses/show", type: :view do
  before(:each) do
    assign(:group_expense, GroupExpense.create!(
      group: nil,
      expense: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
