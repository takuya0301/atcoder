require 'minitest/autorun'
require_relative 'c'

class CTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
4 9 2 3
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
10 40 6 8
    EOS
    output = <<-EOS
23
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
314159265358979323 846264338327950288 419716939 937510582
    EOS
    output = <<-EOS
532105071133627368
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
