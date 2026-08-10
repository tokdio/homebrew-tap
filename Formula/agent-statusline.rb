class AgentStatusline < Formula
  desc "Three-row statusline for Claude Code and other agentic coding CLIs"
  homepage "https://github.com/tokdio/agent-statusline"
  url "https://github.com/tokdio/agent-statusline/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "80d8c9416ba150c5fa5717b23dbc2a9b2c1a9a2629ca92a08298acdedc4d8b29"
  license "MIT"

  depends_on "git"
  depends_on "jq"

  def install
    system "bash", "build.sh", "agent-statusline"
    bin.install "agent-statusline"
  end

  def caveats
    <<~EOS
      Optional, only used if present on PATH:
        - gh (GitHub CLI) — PR review-state + CI status row
        - bd (Beads)      — Beads counts in the project-state row

      Point Claude Code at it in ~/.claude/settings.json:

        {
          "statusLine": {
            "type": "command",
            "command": "#{opt_bin}/agent-statusline",
            "refreshInterval": 5
          }
        }
    EOS
  end

  test do
    payload = '{"model":{"display_name":"Test Model"}}'
    output = pipe_output(bin/"agent-statusline", payload, 0)
    assert_match "Test Model", output
  end
end
