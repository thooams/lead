require 'test_helper'

class PostCardComponentTest < ActiveSupport::TestCase
  include ComponentsHelper

  test "Post Card component" do
    actual = ui_post_card image_url: 'image.png', likes_count: 2, comments_count: 3, trend_percent: 2.2
    expected = "<div class='card'><img class=\"card-img-top\" src=\"/images/image.png\" /><div class='card-body'><div class='info'><i class='fas fa-heart text-primary'></i>2</div><div class='info'><i class='fas fa-comments text-primary'></i>3</div><div class='info'><i class='fas fa-lightning text-primary'></i>2.2%</div></div></div>"

    assert_equal actual, expected
  end
end
