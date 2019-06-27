require 'minitest/autorun'
require_relative 'abc085b'

class ABC085BTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
4
10
8
8
6
    EOS
    output = <<-EOS
3
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
3
15
15
15
    EOS
    output = <<-EOS
1
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
7
50
30
50
100
50
80
30
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
