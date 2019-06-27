require 'minitest/autorun'
require_relative 'd'

class DTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
4 10
6 1 2 7
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
3 5
3 3 3
    EOS
    output = <<-EOS
3
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
10 53462
103 35322 232 342 21099 90000 18843 9010 35221 19352
    EOS
    output = <<-EOS
36
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
