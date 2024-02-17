defmodule EchoPingPong do
  use GenServer

  @moduledoc """
  Documentation for `EchoPingPong`.
  The server accepts the message :ping and echoes {:pong, node()} back to the client.
  """
end
