require 'test_helper'

class GlyphComponentTest < ActiveSupport::TestCase
  include ComponentsHelper

  test "Glyph component" do
    actual = ui_glyph name: 'bell'
    expected = "<i class='fas fa-bell text-primary'></i>"

    assert_equal expected, actual
  end
end
