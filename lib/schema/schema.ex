defmodule GraphqlTemplate.Schema do
  use Absinthe.Schema
  import_types GraphqlTemplate.Schema.Types
  query do
    field :users, list_of(:user) do
      resolve &GraphqlTemplate.UserResolver.all/2
    end
    field :user, :user do
      arg :id, non_null(:id)
      resolve &GraphqlTemplate.UserResolver.get/2
    end
  end
end
