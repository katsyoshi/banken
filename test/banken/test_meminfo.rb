require 'minitest_helper'

class TestMeminfo < Minitest::Test
  def test_read
    meminfo = Banken::Meminfo.new.read
    assert { meminfo.key?(:mem_total) }
    assert { meminfo[:mem_total].key?(:unit) }
  end
end
