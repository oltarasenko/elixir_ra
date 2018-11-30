defmodule Worker do
  @behaviour :ra_machine

  def ping() do
    :pong
  end

  def init(_config) do
    %{}
  end

  def apply(_meta, {:write, key, value}, effects, state) do
    {:maps.put(key, value, state), effects, :ok}
  end

  def apply(_meta, {:read, key}, effects, state) do
    reply = :maps.get(key, state, :undefined)
    {state, effects, reply}
  end
end