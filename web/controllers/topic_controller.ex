defmodule Discuss.TopicController do
  @moduledoc """
  Allow to the server the control of the topics

  """
  use Discuss.Web, :controller

  alias Discuss.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset # returning template

  end

  def create(conn, %{"topic" => topic}) do

  end

end
