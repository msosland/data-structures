class FixedArray
  attr_reader :size

  def initialize(size)
    @size = size
    @array = Array.new(size)
  end

  def size
    @array.length
  end

  def get(num)
    return @array[num] if num < @size && num >=0
    raise IndexOutOfBoundsError
  end

  def set(num, value)
    if num < @size && num >= 0
      @array[num] = value
      return value
    else
      raise IndexOutOfBoundsError
    end
  end

end

class IndexOutOfBoundsError < StandardError; end