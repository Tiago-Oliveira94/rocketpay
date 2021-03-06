defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there's a file with the given name, return the sum of numbers" do
      response = Numbers.sum_from_file(("numbers"))

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when there's no file with the given name, return error" do
      response = Numbers.sum_from_file(("banana"))

      expected_response = {:error, %{message: "deu ruim!"}}

      assert response == expected_response
    end
  end
end
