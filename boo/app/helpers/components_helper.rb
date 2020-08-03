# frozen_string_literal: true

module ComponentsHelper
  EXCLUDE_COMPONENTS = %w[].freeze
  COMPONENTS = Dir.entries(Rails.root.join('app/views/components'))
                  .reject { |a| ['.', '..'].include?(a) }
                  .map { |f| f[1..-1].split('.')[0] }.freeze

  # Generate ui_alert, ui_widget, ui_.... methods
  COMPONENTS.reject { |a| EXCLUDE_COMPONENTS.include?(a) }.each do |component_name|
    define_method "ui_#{component_name}" do |args|
      "#{component_name.camelize}Component".constantize.new(args).render
    end
  end
end
