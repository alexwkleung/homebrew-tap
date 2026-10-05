# alexwkleung/homebrew-tap

Homebrew formulae for [reika](https://github.com/alexwkleung/reika), a coding agent CLI for local and hosted models, designed around small local models first. Docs: [reikacode.com](https://reikacode.com).

```sh
brew install alexwkleung/tap/reika
```

Or tap once and install by name:

```sh
brew tap alexwkleung/tap
brew install reika
```

The formula installs the published npm package, so `brew install` and `npm i -g @alexwkleung/reika` give you the same build. It depends on Homebrew's `node`.

## Releasing a new version

1. In the reika repo: `OUT=<dir> pnpm run release:check`, which smoke-tests the tarball and prints its sha256.
2. `npm publish <dir>/alexwkleung-reika-<version>.tgz`, publishing that exact file so the registry serves the bytes that were hashed.
3. Here: update `url` and `sha256` in `Formula/reika.rb`, then run `brew audit --strict --online alexwkleung/tap/reika` and `brew test alexwkleung/tap/reika` after `brew install`.
