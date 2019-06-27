require 'minitest/autorun'
require_relative 'abc087b'

class PracticeaTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
2
2
2
100
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
5
1
0
150
    EOS
    output = <<-EOS
0
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
30
40
50
6000
    EOS
    output = <<-EOS
213
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
