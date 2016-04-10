require_relative '../fixed-arrays/fixed_array'

class ArrayList
  attr_reader :length

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
      return element
    end
  end

  def add(element)
    if @length < @array.size
      @array.set(@length, element)
      @length += 1
      return element
    else
      increase_size
      add(element)
    end
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
    if @size > 0
      grown_array = FixedArray.new(@size * 2)
    else
      grown_array = FixedArray.new(2)
    end
    0.upto(@length - 1) do |i|
      grown_array.set(i, @array.get(i))
    end
    @array = grown_array
  end


end
