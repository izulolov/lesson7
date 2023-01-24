require_relative 'wagon'
class WagonPassenger < Wagon
  def initialize(size)
    super(size, 'Passenger')
  end

  # Добавить метод, который "занимает места" в вагоне (по одному за раз)
  def take_place
    take_place!
  end

  # Добавить метод, который возвращает кол-во занятых мест в вагоне
  def place_occupied
    @size_occupied
  end

  # Добавить метод, возвращающий кол-во свободных мест в вагоне.
  def free_place
    size - @size_occupied
  end

  private

  def take_place!
    @size_occupied += 1 if size - @size_occupied >= 0
  end
end
=begin

obj = WagonPassenger.new(80)

puts obj.type
puts obj.size

obj.take_place
obj.take_place
obj.take_place

puts obj.place_occupied
puts obj.free_place
=end
