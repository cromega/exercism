module React
  class InputCell
    def initialize(value : Int32)
      @value = value
    end

    def value
      @value
    end

    def value=(value : Int32)
      @value = value
    end
  end

  class ComputeCell
    @inputs : Array(InputCell)

    def initialize(input : InputCell, &block : Int32 -> Int32)
      @inputs = [input]
      @block = block
    end

    def initialize(value : ComputeCell, &block : Int32 -> Int32)
      @inputs = [input]
      @block = block
    end

    def initialize(input1 : InputCell, input2 : InputCell, &block : Int32, Int32 -> Int32)
      @inputs = [input1, input2]
      @block = block
    end

    def initialize(value1 : ComputeCell, value2 : ComputeCell, &block : Int32, Int32 -> Int32)
      @inputs = [value1, value2]
      @block = block
    end

    def value
      @inputs.reduce(0) { |sum, value| sum += @block.call value.value }
    end

    def add_callback(&block)

    end

    def remove_callback(block)

    end
  end
end
