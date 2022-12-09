require 'rails_helper'

RSpec.describe "group_expenses/new", type: :view do
  before(:each) do
    assign(:group_expense, GroupExpense.new(
      group: nil,
      expense: nil
    ))
  end

  it "renders new group_expense form" do
    render

    assert_select "form[action=?][method=?]", group_expenses_path, "post" do

      assert_select "input[name=?]", "group_expense[group_id]"

      assert_select "input[name=?]", "group_expense[expense_id]"
    end
  end
end
