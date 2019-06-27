require 'minitest/autorun'
require_relative 'abc088b'

class ABC088BTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
2
3 1
    EOS
    output = <<-EOS
2
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
3
2 7 4
    EOS
    output = <<-EOS
5
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
4
20 18 2 18
    EOS
    output = <<-EOS
18
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
