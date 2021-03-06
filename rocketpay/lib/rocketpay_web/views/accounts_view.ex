defmodule RocketpayWeb.AccountsView do
  alias Rocketpay.Account
  alias Rocketpay.Accounts.Transactions.Response, as: TransactionResponse

  def render("update.json", %{
        account: %Account{
          id: account_id,
          balance: balance
        }
      }) do
    %{
      message: "Balance updated!",
      account: %{
        id: account_id,
        balance: balance
      }
    }
  end

  def render("transaction.json", %{
        transaction: %TransactionResponse{from_account: from_account, to_account: to_account}
      }) do
    %{
      message: "Transaction done succesfully!",
      transaction: %{
        from_accout: %{
          id: from_account.id,
          balance: from_account.balance
        },
        to_account: %{id: to_account.id, balance: to_account.balance}
      }
    }
  end
end
