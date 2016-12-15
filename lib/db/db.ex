defmodule GraphqlTemplate.Db do
  use Moebius.Database
  import Moebius.Query

  def all_users do
    case db(:users) |> run do
      nil -> {:ok, "No users found"}
      result -> {:ok, result}
      {:error, err} -> {:error, err}
    end
  end

  def get_user(id) do
    case db(:users) |> find(id) do
      nil -> {:error, "User not found"}
      result -> {:ok, result}
      {:error, err} -> {:error, err}
    end
  end
end
