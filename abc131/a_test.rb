require 'minitest/autorun'
require_relative 'a'

class ATest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
3776
    EOS
    output = <<-EOS
Bad
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
8080
    EOS
    output = <<-EOS
Good
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
1333
    EOS
    output = <<-EOS
Bad
    EOS
    execute(input, output)
  end

  def test_main4
    input = <<-EOS
0024
    EOS
    output = <<-EOS
Bad
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
