defmodule EchoPingPongTest do
  use ExUnit.Case
  doctest EchoPingPong

  test "pings a server" do
    {:ok, _pid} = Node.start(:test@localhost)
    {:ok, pid} = EchoPingPong.start_link()
    assert EchoPingPong.call(pid) == {:pong, :test@localhost}
  end
end
