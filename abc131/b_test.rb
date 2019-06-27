require 'minitest/autorun'
require_relative 'b'

class BTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
5 2
    EOS
    output = <<-EOS
18
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
3 -1
    EOS
    output = <<-EOS
0
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
30 -50
    EOS
    output = <<-EOS
-1044
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
