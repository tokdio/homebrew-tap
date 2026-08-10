# homebrew-agent-statusline

Homebrew tap for [agent-statusline](https://github.com/poudelprakash/agent-statusline), a three-row statusline for Claude Code and other agentic coding CLIs.

## Install

```bash
brew install poudelprakash/agent-statusline/agent-statusline
```

Or tap it first, then install by formula name:

```bash
brew tap poudelprakash/agent-statusline
brew install agent-statusline
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "poudelprakash/agent-statusline"
brew "agent-statusline"
```

Then point Claude Code at the installed binary in `~/.claude/settings.json` — `brew info agent-statusline` prints the exact path and `statusLine` block to use.

## Documentation

See the [main repo](https://github.com/poudelprakash/agent-statusline) for what the statusline shows and how it's built. `brew help`, `man brew`, or [Homebrew's docs](https://docs.brew.sh) for tap/formula mechanics.
