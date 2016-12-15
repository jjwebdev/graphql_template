defmodule GraphqlTemplate.UserResolver do
  alias GraphqlTemplate.Db

  def all(_args, _info) do
    Db.all_users
  end

  def get(%{id: id} = args, _info) do
    Db.get_user(id)
  end
end
