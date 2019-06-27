require 'minitest/autorun'
require_relative 'abc081a'

class PracticeaTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
101
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
000
    EOS
    output = <<-EOS
0
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
