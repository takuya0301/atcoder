require 'minitest/autorun'
require_relative '2_1_lake_counting'

class LakeCountingTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
10 12
W........WW.
.WWW.....WWW
....WW...WW.
.........WW.
.........W..
..W......W..
.W.W.....WW
W.W.W.....W.
.W.W......W.
..W.......W.
    EOS
    output = <<-EOS
3
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
