(() => {
    const name = document.title.split('-')[0].trim();
    let samples = [...document.querySelectorAll('[id^=pre-sample]')].map(e => e.textContent);
    samples = samples.slice(0, Math.floor(samples.length / 2));
    let code = "require 'minitest/autorun'\nrequire_relative '" + name.toLowerCase() + "'\n\nclass " + name + "Test < MiniTest::Unit::TestCase";
    for (let i = 0; i < Math.floor(samples.length / 2); i++) {
        code += "\n\n  def test_main" + (i + 1) + "\n    input = <<-EOS\n" + samples[i * 2] + "    EOS\n    output = <<-EOS\n" + samples[i * 2 + 1] + "    EOS\n    execute(input, output)\n  end"
    }
    code += "\n\n  def setup\n    $stdin = StringIO.new\n  end\n\n  def teardown\n    $stdin = STDIN\n  end\n\n  def execute(input, output)\n    $stdin.write(input)\n    $stdin.rewind\n    assert_output(output) {main}\n  end\nend\n";
    let textarea = document.createElement("textarea");
    textarea.value = code;
    document.getElementById("task-statement").append(textarea);
})();
