class AccountsController < ApplicationController

  def index
  end


  def pay

  end

  def recharge
    begin
      current_user.account.recharge params[:pay][:amount]
      flash[:success] = "充值成功"
      redirect_to accounts_index_path
    rescue BookShop::MoneyFormatError
      flash[:alert] = "输入的金额格式错误"
      redirect_to accounts_pay_path
    end
  end

  def records
    @records = current_user.account.expense_records
  end

end
