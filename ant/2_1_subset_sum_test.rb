require 'minitest/autorun'
require_relative '2_1_subset_sum'

class SubsetSumTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
4
1 2 4 7
13
    EOS
    output = <<-EOS
Yes
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
4
1 2 4 7
15
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
