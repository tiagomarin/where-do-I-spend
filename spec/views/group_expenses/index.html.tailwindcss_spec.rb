require 'rails_helper'

RSpec.describe "group_expenses/index", type: :view do
  before(:each) do
    assign(:group_expenses, [
      GroupExpense.create!(
        group: nil,
        expense: nil
      ),
      GroupExpense.create!(
        group: nil,
        expense: nil
      )
    ])
  end

  it "renders a list of group_expenses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
