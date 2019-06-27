require 'minitest/autorun'
require_relative '1_6_ants'

class AntsTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
10 3
2 6 7
    EOS
    output = <<-EOS
4 8
    EOS
    execute(input, output)
  end

  def setup
    $stdin = StringIO.new
  end

  def teardown
    $stdin = STDIN
  end

  def execute(input, output)
    $stdin.write(input)
    $stdin.rewind
    assert_output(output) {main}
  end
end
