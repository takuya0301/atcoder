require 'minitest/autorun'
require_relative 'c'

class CTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
2 3 1 2
    EOS
    output = <<-EOS
3.000000 0
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
2 2 1 1
    EOS
    output = <<-EOS
2.000000 1
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
