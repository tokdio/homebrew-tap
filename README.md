# homebrew-tap

[tokdio](https://www.tokdio.com)'s Homebrew tap — formulae (and, in future, casks for desktop apps) for tokdio's open-source projects, all in one place.

## Install

```bash
brew tap tokdio/tap
brew install <formula>
```

Or without tapping first:

```bash
brew install tokdio/tap/<formula>
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "tokdio/tap"
brew "<formula>"
```

## What's here

| Formula | Project | Description |
|---|---|---|
| [`agent-statusline`](Formula/agent-statusline.rb) | [poudelprakash/agent-statusline](https://github.com/poudelprakash/agent-statusline) | Three-row statusline for Claude Code and other agentic coding CLIs |

`brew info <formula>` prints install-specific details (paths, caveats, config snippets) for any formula in this tap.

## Staying up to date

```bash
brew update && brew upgrade <formula>
```

Formulae here are kept current automatically: a daily [`bump.yml`](.github/workflows/bump.yml) workflow runs `brew bump-packages` against each formula's upstream repo and opens a PR bumping `url`/`sha256` when a newer tagged release exists. [`tests.yml`](.github/workflows/tests.yml) builds and tests that PR; a maintainer still reviews/merges it and runs [`publish.yml`](.github/workflows/publish.yml) (`brew pr-pull`) to attach bottles before it lands on `main`. Once merged, `brew update` picks it up for every user.

## Documentation

`brew help`, `man brew`, or [Homebrew's docs](https://docs.brew.sh) for tap/formula mechanics.
