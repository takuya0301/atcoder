require 'minitest/autorun'
require_relative 'abc086a'

class PracticeaTest < MiniTest::Unit::TestCase
  def setup
    $stdin = StringIO.new
  end

  def teardown
    $stdin = STDIN
  end

  def test_main1
    input = <<-EOS
3 4
    EOS

    output = <<-EOS
Even
    EOS

    $stdin.write(input)
    $stdin.rewind
    assert_output(output) {main}
  end

  def test_main2
    input = <<-EOS
1 21
    EOS

    output = <<-EOS
Odd
    EOS

    $stdin.write(input)
    $stdin.rewind
    assert_output(output) {main}
  end
end
