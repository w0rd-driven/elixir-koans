defmodule StructsTests do
  use ExUnit.Case
  import TestHarness

  test "Structs" do
    answers = [
      %Structs.Person{},
      nil,
      "Joe",
      33,
      {:multiple, [true, false]},
      {:ok, 22},
      %Structs.Airline{plane: %Structs.Plane{maker: :airbus}, name: "Southwest"},
      %Structs.Airline{plane: %Structs.Plane{maker: :boeing, passengers: 202}, name: "Southwest"},
    ]

    test_all(Structs, answers)
  end
end
