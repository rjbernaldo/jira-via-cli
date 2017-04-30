defmodule Jvc do
  @moduledoc """
  Documentation for Jvc.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Jvc.hello
      :world

  """
  def hello do
    :world
  end
  
  def main(args) do
    args
    |> parse_args
    |> process
  end
  
  def process([]) do
    IO.puts "No arguments given"
  end
  
  def process(options) do
    IO.puts "Hello #{options[:name]}"
  end
  
  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(
      args,
      switches: [foo: :string]
    )
    
    options
  end
end
