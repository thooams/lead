# frozen_string_literal: true
#
# Create an glyph component
#
# This component is based of the simple component
#
# ==== Attributes
#
# * +name+ - [String] Name of the font awesome glyph (without "fa-")
# * +status+ - [Symbol/String] State/Color of the widget
# * +type+ - [Symbol/String] Type of font: fas, far, fad, fab, fal
#
# ==== Signatures
#
#   GlyphComponent.new(name: 'bell', status: :warning, type: 'fas').render
#
# === Examples:
#
# = ui_glyph name: 'bell'
#
class GlyphComponent < SimpleComponent
  attr_reader :name

  STATUSES = %i(primary secondary success danger warning info)
  TYPES = %i(fas far fad fab fal)

  def type
    TYPES.fetch_value(@type, :fas)
  end

  def status
    STATUSES.fetch_value(@status, :primary)
  end
end
