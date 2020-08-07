require 'test_helper'

class BooExtensionsTest < ActiveSupport::TestCase

  test 'fetch_value' do
    actual = %i[toto titi tata].fetch_value(:toto)
    expected = :toto

    assert_equal actual, expected
  end

  test 'fetch value with default value' do
    actual = %i[toto titi tata].fetch_value(:totu, :default)
    expected = :default

    assert_equal actual, expected
  end

  test 'average with Objects' do
    actual = [OpenStruct.new(toto: 0), OpenStruct.new(toto: 20)].average(&:toto)
    expected = 10

    assert_equal actual, expected
  end

  test 'average with numbers' do
    actual = [0,20].average
    expected = 10

    assert_equal actual, expected
  end

  test 'average with an empty array' do
    actual = [].average(&:toto)
    expected = nil

    assert_equal actual, expected
  end
end
