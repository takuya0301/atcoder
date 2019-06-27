require 'minitest/autorun'
require_relative 'practicea'

class PracticeATest < MiniTest::Unit::TestCase

  def test_main1
    input = <<-EOS
1
2 3
test
    EOS
    output = <<-EOS
6 test
    EOS
    execute(input, output)
  end

  def test_main2
    input = <<-EOS
72
128 256
myonmyon
    EOS
    output = <<-EOS
456 myonmyon
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
