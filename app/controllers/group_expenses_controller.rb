class GroupExpensesController < ApplicationController
  before_action :set_group_expense, only: %i[ show edit update destroy ]
  before_action :set_group
  before_action :set_groups
  before_action :set_expenses

  # GET /group_expenses or /group_expenses.json
  def index
    @group_expenses = GroupExpense.all
  end

  # GET /group_expenses/1 or /group_expenses/1.json
  def show
  end

  # GET /group_expenses/new
  def new
    @group_expense = GroupExpense.new
  end

  # GET /group_expenses/1/edit
  def edit
  end

  # POST /group_expenses or /group_expenses.json
  def create
    
    @group_expense = GroupExpense.new(group_expense_params)

    respond_to do |format|
      if @group_expense.save
        format.html { redirect_to user_groups_path(current_user), notice: "Group expense was successfully created." }
        format.json { render :show, status: :created, location: @group_expense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_expenses/1 or /group_expenses/1.json
  def update
    respond_to do |format|
      if @group_expense.update(group_expense_params)
        format.html { redirect_to group_expense_url(@group_expense), notice: "Group expense was successfully updated." }
        format.json { render :show, status: :ok, location: @group_expense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_expenses/1 or /group_expenses/1.json
  def destroy
    @group_expense.destroy

    respond_to do |format|
      format.html { redirect_to group_expenses_url, notice: "Group expense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_expense
      @group_expense = GroupExpense.find(params[:id])
    end

    def set_group
      @group = Group.find(params[:group_id])
    end

    def set_groups
      @groups = current_user.groups[0].id
    end

    def set_expenses
      @expenses = current_user.expenses[0].id
    end

    # Only allow a list of trusted parameters through.
    def group_expense_params
      params.require(:group_expense).permit(:group_id, :expense_id)
    end
end
