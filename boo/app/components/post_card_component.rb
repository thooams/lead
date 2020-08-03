# frozen_string_literal: true
#
# Create a post card component
#
# This component is based of the simple component
#
# ==== Attributes
#
# * +image_url+ - [String] Url of image
# * +likes_count+ - [Integer] Number of likes
# * +comments_count+ - [Integer] Number of likes
# * +trend_percent+ - [Float] Trend percent
#
# ==== Signatures
#
#   PostCardComponent.new(image_url: 'my/image.png', likes_count: 399,
#   comments_count: 3, trend_percent: 3.2).render
#
# === Examples:
#
# = ui_post_card image_url: 'image.png', likes_count: 1, comments_count: 3,
# trend_percent: 2.1
#
class PostCardComponent < SimpleComponent
  attr_reader :image_url, :likes_count, :comments_count, :trend_percent
end
