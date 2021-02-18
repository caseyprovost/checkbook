module Accounts
  class BaseController < ApplicationController
    before_action :set_account

    private

    def set_account
      @account = current_user.accounts.find_by(id: params[:account_id])
    end
  end
end
