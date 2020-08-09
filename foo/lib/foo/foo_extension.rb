module FooExtension
  Array.class_eval do

    # Return value if exist else return default value
    # @return [String/Symbol] value or default value
    def fetch_value(value, default = nil)
      self.include?(value) ? value : default
    end

    # Return the average of an array
    # @return [Float/Nil] Average number
    def average(&block)
      return nil if self.empty?
      sum = block_given? ? self.map(&block).sum : self.sum
      sum / self.size
    end
  end
end
