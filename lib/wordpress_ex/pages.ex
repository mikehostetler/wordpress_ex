defmodule WordpressEx.Pages do
  @moduledoc """
  Wordpress Page endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]
  alias WordpressEx.Model.Page

  @doc """
  Get a list of pages

  ## Examples:

      WordpressEx.Pages.list()
      WordpressEx.Pages.list(page: 2, per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/pages/#list-pages
  """
  def list(opts \\ []) do
    get("/pages", opts)
    |> compose(Page)
  end
end
