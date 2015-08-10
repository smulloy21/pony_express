class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end
  define_method(:volume) do
    @length * @width * @height
  end
  define_method(:cost_to_ship) do |distance|
    cost = 0
    if distance <= 15
      cost += 1
    elsif distance <= 60
      cost += 2
    else
      cost += 3
    end
    cost += (@weight / 10)
    cost += (volume() / 100)
    cost
  end
end
