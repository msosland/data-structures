require_relative '../fixed-arrays/fixed_array'

class ArrayList
  attr_reader :length, :size

  def initialize(size = 16)
    @size = size
    @array = FixedArray.new(size)
    @length = 0
  end

  def get(index)
    if index >= @length || index < 0
      raise IndexOutOfBoundsError
    else
      @array.get(index)
    end
  end

  def set(index, element)
    if index >= @length || index < 0
      raise IndexOutOfBoundsError
    else
      @array.set(index, element)
    end
  end

  def add(element)
    increase_size if @array.size == @length
    @array.set(@length, element)
    p size
    p length
    @length += 1
    element
  end

  def insert(index, element)
    if index > @length || index < 0
      raise IndexOutOfBoundsError
    else
      increase_size if @length == @size
      adjust(index)
      @array.set(index, element)
      element
    end
  end


  private
  def adjust(index)
    counter = @length - 1
    add("placeholder")
    while counter >= index
      @array.set(counter + 1, @array.get(counter))
      counter -= 1
    end
  end

  def increase_size
    grown_array = FixedArray.new(@size * 2)
    0.upto(@length - 1) do |i|
      grown_array.set(i, @array.get(i))
    end
    @array = grown_array
  end


end
