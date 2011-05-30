$: << File.join(File.dirname(__FILE__), '../lib')

require 'test/unit'
require 'torispelling'

class ToriSpellingTest < Test::Unit::TestCase
  def test_revers
    s = "STRING"
    assert s.revers == s.reverse
  end
end
