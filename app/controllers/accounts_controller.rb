class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @pagy, @accounts = pagy(current_user.accounts)
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def create
    @account = current_user.accounts.new(account_params)

    respond_to do |format|
      if @account.save
        format.html {
          flash[:notice] = "Your account was successfully added"
          redirect_to accounts_path
        }
      else
        format.turbo_stream
        format.html
      end
    end
  end

  def destroy
  end

  def account_params
    params.require(:account).permit(:name, :bank, :starting_balance)
  end
end
