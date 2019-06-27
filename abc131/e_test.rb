require 'minitest/autorun'
require_relative 'e'

class ETest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
5 3
    EOS
    output = <<-EOS
5
4 3
1 2
3 1
4 5
2 3
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
5 8
    EOS
    output = <<-EOS
-1
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
