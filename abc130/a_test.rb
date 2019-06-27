require 'minitest/autorun'
require_relative 'a'

class ATest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
3 5
    EOS
    output = <<-EOS
0
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
7 5
    EOS
    output = <<-EOS
10
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
6 6
    EOS
    output = <<-EOS
10
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
