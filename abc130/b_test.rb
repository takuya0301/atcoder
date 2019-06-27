require 'minitest/autorun'
require_relative 'b'

class BTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
3 6
3 4 5
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
4 9
3 3 3 3
    EOS
    output = <<-EOS
4
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
