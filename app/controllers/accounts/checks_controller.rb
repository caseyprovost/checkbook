module Accounts
  class ChecksController < BaseController
    before_action :set_check, only: [:edit, :update, :destroy]

    def edit
    end

    def new
    end

    def update
    end

    def create
    end

    def destroy
    end

    private

    def set_check
      @account.checks.find(params[:id])
    end
  end
end
