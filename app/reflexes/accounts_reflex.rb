class AccountsReflex < ApplicationReflex
  def new
    account = Account.new(user: current_user)
    morph "#modal_container", render(partial: "accounts/modal_form", locals: {account: account})
  end
end
