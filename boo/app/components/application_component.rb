# frozen_string_literal: true

class ApplicationComponent
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Context
  include Rails.application.routes.url_helpers

  attr_accessor :output_buffer

  def render
    ActionController::Base.render(partial: "components/#{component_name}", locals: { component: self })
  end

  def glyph_and_content(glyph = nil, cont = nil)
    glyph_name = glyph || html_options_glyph
    capture do
      if glyph_name
        concat content_tag(:i, nil, class: "glyph fa fa-#{glyph_name}")
        concat ' '
      end
      concat cont || content
    end
  end

  protected

  def component_name
    self.class.name[0..-10].underscore
  end

  def html_options_glyph
    respond_to?(:html_options) ? html_options[:glyph] : nil
  end
end
