require 'minitest/autorun'
require_relative 'abc081b'

class PracticeaTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
3
8 12 40
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
4
5 6 8 10
    EOS
    output = <<-EOS
0
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
6
382253568 723152896 37802240 379425024 404894720 471526144
    EOS
    output = <<-EOS
8
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
