require 'minitest/autorun'
require_relative 'abc085c'

class ABC085CTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
9 45000
    EOS
    output = <<-EOS
4 0 5
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
20 196000
    EOS
    output = <<-EOS
-1 -1 -1
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
1000 1234000
    EOS
    output = <<-EOS
26 0 974
    EOS
    execute(input, output)
  end

  def test_main4
    input = <<-EOS
2000 20000000
    EOS
    output = <<-EOS
2000 0 0
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
