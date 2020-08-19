defmodule TodoList do
  defstruct auto_id: 1, entries: %{}

  def new() do
  end

  def add_entry(_, _, _) do
  end

  def add_entry(%{entries: entries, auto_id: next_id} = todo_list, entry) do
    entry = Map.put(entry, :id, next_id)

    entries = Map.put(entries, next_id, entry)

    %TodoList{todo_list | auto_id: next_id + 1, entries: entries}
  end

  def entries(_, _) do
  end
end
