defmodule EchoPingPongTest do
  use ExUnit.Case
  doctest EchoPingPong

  test "pings a server" do
    {:ok, pid} = EchoPingPong.start_link()
    response = {:pong, :test@localhost}
    assert EchoPingPong.call(pid) == response
    assert_receive response
  end
end
