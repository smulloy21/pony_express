require('rspec')
require('pony_epress')

describe(Parcel) do
  describe('#volume') do
    it('calculates the volume of a parcel with the given dimensions') do
      test_parcel = Parcel.new(2, 4, 6, 13)
      expect(test_parcel.volume()).to(eq(48))
    end
  end
end
