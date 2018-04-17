defmodule Exq.Support.Process do
  @moduledoc """
  Struct for in progress worker
  """
  defstruct pid: nil, hostname: nil, job: nil, started_at: nil, concurrency: nil, job: nil, queues: nil

  alias Exq.Support.Config

  @doc """
  Serialize process to JSON
  """
  def encode(process) do
    Config.serializer.encode_process(process)
  end

  @doc """
  Decode JSON into process
  """
  def decode(serialized) do
    Config.serializer.decode_process(serialized)
  end
end
