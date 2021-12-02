defmodule Discuss.Topic do
  @moduledoc """
    Provides a module who searchs for a specific
    table in PostgreSQL with a field called title who
    contains a string
  """
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
  end

  @doc """
  The changeset function will take the parameters,  
  validate them and put them in a struct who will represent
  the information that we want to save in PostgreSQL

  """
  def changeset(struct, params \\ %{}) do

    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end

end
