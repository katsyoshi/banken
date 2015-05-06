require 'minitest_helper'

class TestRstat < Minitest::Test
  def test_version
    assert { ::Banken::VERSION == '0.1.0' }
  end
end
