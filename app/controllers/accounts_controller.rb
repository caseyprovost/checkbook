class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @pagy, @accounts = pagy(current_user.accounts)
  end

  def new
    @account = current_user.accounts.new
  end

  def edit
    @account = current_user.accounts.find(params[:id])
  end

  def show
  end

  def update
    @account = current_user.accounts.find(params[:id])

    respond_to do |format|
      if @account.update(account_params)
        # format.turbo_stream
        format.html { redirect_to accounts_path }
      else
        format.turbo_stream
        format.html
      end
    end
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
