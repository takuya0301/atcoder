require 'minitest/autorun'
require_relative 'a'

class ATest < MiniTest::Unit::TestCase
  def setup
    $stdin = StringIO.new
  end

  def teardown
    $stdin = STDIN
  end

  def test_main
    input = <<-EOS
1
2 3
test
    EOS

    output = <<-EOS
6 test
    EOS

    $stdin.write(input)
    $stdin.rewind
    assert_output(output) { main }
  end
end
