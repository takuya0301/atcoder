require 'minitest/autorun'
require_relative '1_6_sankakukei'

class SankakukeiTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
5
2 3 4 5 10
    EOS
    output = <<-EOS
12
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
4
4 5 10 20
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
