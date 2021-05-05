defmodule Service1 do

  use GenServer


  def start_link(opts) do
    GenServer.start_link(__MODULE__, %{})
  end

  @impl true
  def init(stack) do

IO.inspect(:loaded)
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end


  @moduledoc """
  Documentation for `Service1`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Service1.hello()
      :world

  """
  def hello do
    :world
  end
end
