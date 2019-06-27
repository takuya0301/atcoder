require 'minitest/autorun'
require_relative 'abc083b'

class ABC083BTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
20 2 5
    EOS
    output = <<-EOS
84
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
10 1 2
    EOS
    output = <<-EOS
13
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
100 4 16
    EOS
    output = <<-EOS
4554
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
