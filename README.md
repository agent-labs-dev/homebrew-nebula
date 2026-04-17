# homebrew-nebula

Homebrew tap for [`nebula-ai`](https://github.com/agent-labs-dev/nebula-cli) — the CLI/TUI for the [nebula.gg](https://nebula.gg) AI task orchestration platform.

## Install

```sh
brew install agent-labs-dev/nebula/nebula-ai

# or tap first, then install:
brew tap agent-labs-dev/nebula
brew install nebula-ai

brew upgrade nebula-ai
```

Supported on macOS (arm64, x64) and Linux (x64, arm64). Windows users: install via `npx nebula-ai` or `npm i -g nebula-ai` from the [main repo](https://github.com/agent-labs-dev/nebula-cli).

## How this tap is maintained

`Formula/nebula-ai.rb` is **generated and overwritten automatically** on every prod release of [`agent-labs-dev/nebula-cli`](https://github.com/agent-labs-dev/nebula-cli). Direct edits will be clobbered on the next release.

The generator is [`scripts/publish/render-formula.mjs`](https://github.com/agent-labs-dev/nebula-cli/blob/main/scripts/publish/render-formula.mjs) in the main repo. It computes SHA-256 over each platform tarball in the same CI run that uploads those tarballs to R2, then opens a commit here and pushes to `main`. See [`.github/workflows/publish.yml`](https://github.com/agent-labs-dev/nebula-cli/blob/main/.github/workflows/publish.yml) for the full pipeline.

## Integrity

Homebrew verifies each download via the `sha256` pinned in the Formula, delivered over HTTPS from GitHub. This is independent of the ed25519-signed manifest that the npm distribution uses — see [`scripts/publish/sign-manifest.mjs`](https://github.com/agent-labs-dev/nebula-cli/blob/main/scripts/publish/sign-manifest.mjs) in the main repo.

## Channels

This tap carries **prod releases only**. Dev builds use a `-dev.<timestamp>.<sha>` version format that Homebrew's comparator mishandles; reach the dev channel via `npm i -g nebula-ai@dev` or `npx nebula-ai@dev` instead.

## License

MIT — see [LICENSE](./LICENSE).
