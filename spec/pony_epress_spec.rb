require('rspec')
require('pony_epress')

describe(Parcel) do
  describe('#volume') do
    it('calculates the volume of a parcel with the given dimensions') do
      test_parcel = Parcel.new(2, 4, 6, 13)
      expect(test_parcel.volume()).to(eq(48))
    end
  end
  describe('#cost_to_ship') do
    it('calculates shipping cost based on size, weight and distance') do
      test_parcel = Parcel.new(4, 6, 10, 10)
      expect(test_parcel.cost_to_ship(50)).to(eq(5))
    end
    it('calculates shipping cost based on size, weight and distance') do
      test_parcel = Parcel.new(6, 6, 6, 10)
      expect(test_parcel.cost_to_ship(10)).to(eq(4))
    end
  end
end
