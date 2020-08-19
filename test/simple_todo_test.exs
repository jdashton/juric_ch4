defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList

  describe "simple_todo" do
    setup do
      todo_list =
        TodoList.new()
        |> TodoList.add_entry(%{date: ~D[2018-12-19], title: "Dentist"})
        |> TodoList.add_entry(%{date: ~D[2018-12-20], title: "Shopping"})
        |> TodoList.add_entry(%{date: ~D[2018-12-19], title: "Movies"})

      %{todo_list: todo_list}
    end

    test "retrieves entries for Dec 19", context do
      dec_19_entries = TodoList.entries(context.todo_list, ~D[2018-12-19])

      assert dec_19_entries == [
               %{date: ~D[2018-12-19], title: "Movies"},
               %{date: ~D[2018-12-19], title: "Dentist"}
             ]
    end

    test "retrieves entries for Dec 18", context do
      dec_18_entries = TodoList.entries(context.todo_list, ~D[2018-12-18])
      assert dec_18_entries == []
    end
  end
end
