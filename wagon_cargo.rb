require_relative 'wagon'

class WagonCargo < Wagon
  def initialize(size)
    super(size, 'Cargo')
  end

  # Добавить метод, которые "занимает объем" в вагоне (объем указывается в качестве параметра метода)
  def take_volume(vol)
    take_volume!(vol)
  end

  # Добавить метод, который возвращает занятый объем
  def volume_occupied
    @size_occupied
  end

  # Добавить метод, который возвращает оставшийся (доступный) объем
  def free_volume
    size - @size_occupied
  end

  private

  def take_volume!(vol)
    @size_occupied += vol if size - @size_occupied >= 0
  end
end

=begin
obj = WagonCargo.new(110)

puts obj.type
puts obj.size

obj.take_volume(25)
obj.take_volume(15)
obj.take_volume(20)

puts obj.free_volume
puts obj.volume_occupied
=end
