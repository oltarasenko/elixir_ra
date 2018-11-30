defmodule RaElixir do
  @moduledoc """
  Documentation for RaElixir.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RaElixir.hello
      :world

  """
  def hello do
    :world
  end

  def start_ra_cluster() do
    members = [
      {:ra_kv1, :'one@127.0.0.1'}, 
      {:ra_kv2, :'two@127.0.0.1'}, 
      {:ra_kv3, :'three@127.0.0.1'}
    ]
    :ra.start_cluster("kv_cluster", {:module, Worker, %{}}, members)
  end
end
