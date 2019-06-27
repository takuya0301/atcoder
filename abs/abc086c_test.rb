require 'minitest/autorun'
require_relative 'abc086c'

class ABC086CTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
2
3 1 2
6 1 1
    EOS
    output = <<-EOS
Yes
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
1
2 100 100
    EOS
    output = <<-EOS
No
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
2
5 1 1
100 1 1
    EOS
    output = <<-EOS
No
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
