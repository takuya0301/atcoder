require 'minitest/autorun'
require_relative '1_6_kujibiki_on2logn'

class KujibikiTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
3 10
1 3 5
    EOS
    output = <<-EOS
Yes
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
3 9
1 3 5
    EOS
    output = <<-EOS
No
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
