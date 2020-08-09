# frozen_string_literal: true

class SimpleComponent < ApplicationComponent
  def initialize(args)
    (args || []).each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end
end
