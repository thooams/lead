module BooExtension
  Array.class_eval do

    # Return value if exist else return default value
    # @return [String/Symbol] value or default value
    def fetch_value value, default = nil
      self.include?(value) ? value : default
    end
  end
end
