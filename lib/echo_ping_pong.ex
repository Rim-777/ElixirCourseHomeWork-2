defmodule EchoPingPong do
  use GenServer

  @moduledoc """
  Documentation for `EchoPingPong`.
  The server accepts the message :ping and echoes {:pong, node()} back to the client.
  """

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  def call(pid) do
    GenServer.call(pid, :ping)
  end

  @impl GenServer
  def init(_args) do
    {:ok, nil}
  end

  @impl GenServer
  def handle_call(:ping, _from, state) do
    {:reply, {:pong, node()}, state}
  end
end
