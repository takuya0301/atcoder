require 'minitest/autorun'
require_relative 'd'

class DTest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
5
2 4
1 9
1 8
4 9
3 12
    EOS
    output = <<-EOS
Yes
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
3
334 1000
334 1000
334 1000
    EOS
    output = <<-EOS
No
    EOS
    execute(input, output)
  end

  def test_main3
    input = <<-EOS
30
384 8895
1725 9791
170 1024
4 11105
2 6
578 1815
702 3352
143 5141
1420 6980
24 1602
849 999
76 7586
85 5570
444 4991
719 11090
470 10708
1137 4547
455 9003
110 9901
15 8578
368 3692
104 1286
3 4
366 12143
7 6649
610 2374
152 7324
4 7042
292 11386
334 5720
    EOS
    output = <<-EOS
Yes
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
