class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]
  
  def index
    @accounts = current_user.accounts
  end

  def show
  end

  def new
    @accounts = Account.new
  end

  def create
    @accounts = current_user.accounts.new(account_params)
    if @accounts.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @accounts.update(account_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end

  def destroy
    @accounts.destroy
  end

private

def account_params
  params.require(:account).permit(:balance, :name)
end

def set_account
  @accounts = current_user.accounts.find(params[:id])
end

end
