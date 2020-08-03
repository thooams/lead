# frozen_string_literal: true

#
# Create an alert component
#
# This component is based of the simple component
#
# ==== Attributes
#
# * +glyph+ - [String] Name of the font awesome glyph (without "fa-")
# * +status+ - [Symbol/String] State/Color of the widget
# * +content+ - [String] Html/text of the alert
#
# ==== Signatures
#
#   AlertComponent.new(glyph: 'bell', status: :warning, content: 'Be careful').render
#
# === Examples:
#
# = ui_alert glyph: 'bell', status: :warning, content: 'Be careful'
#
class AlertComponent < SimpleComponent
  attr_reader :glyph, :status, :content
end
