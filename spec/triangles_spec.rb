require('rspec')
require('triangles')

describe(Triangle) do

  describe("#numeric?") do
    it("returns an error if an input is not a number") do
      test_triangle = Triangle.new('a', 3, 6)
      expect(test_triangle.numeric?()).to(eq(false))
    end
  end
#going to convert this test to the input field so you can't submit if a field is empty
  describe("#inputs?") do
    it("returns an error if an input is missing or is incorrect") do
      test_triangle = Triangle.new('', 3, 6)
      expect(test_triangle.inputs?()).to(eq("Side1 is not a valid input"))
    end
  end

  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangle?()).to(eq("Not a triangle!"))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(2, 7, 8)
      expect(test_triangle.triangle?()).to(eq("This is a triangle!"))
    end
  end

  #describe("#type?") do
  #  it("")
  #end
end
