require 'minitest/autorun'
require_relative 'abc049c'

class ABC049CTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
erasedream
    EOS
    output = <<-EOS
YES
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
dreameraser
    EOS
    output = <<-EOS
YES
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
dreamerer
    EOS
    output = <<-EOS
NO
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
