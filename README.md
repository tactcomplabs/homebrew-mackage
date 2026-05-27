# homebrew-mackage

A [Homebrew](https://brew.sh) tap for [mackage](https://github.com/tactcomplabs/mackage) — build macOS `.pkg` installers from a single JSON config via `pkgbuild`/`productbuild`.

## Install

```sh
brew tap tactcomplabs/mackage
brew install mackage
```

Or in a single command:

```sh
brew install tactcomplabs/mackage/mackage
```

## Upgrade

```sh
brew update
brew upgrade mackage
```

## Install from the latest `main` (HEAD)

```sh
brew install --HEAD tactcomplabs/mackage/mackage
```

## Uninstall

```sh
brew uninstall mackage
brew untap tactcomplabs/mackage
```

## Notes

- `mackage` wraps Apple's `pkgbuild`/`productbuild`, so it is **macOS only**.
- The formula depends on `python@3.13` and pins the script's shebang to that interpreter.

## Updating the formula for a new release

When a new version of `mackage` is tagged in the
[main repo](https://github.com/tactcomplabs/mackage):

1. Compute the SHA256 of the release tarball:
   ```sh
   curl -sL https://github.com/tactcomplabs/mackage/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```
2. Update `url` and `sha256` in [`Formula/mackage.rb`](Formula/mackage.rb).
3. Commit and push.

## License

The formula here follows the upstream project's [Apache-2.0](https://github.com/tactcomplabs/mackage/blob/main/LICENSE) license.
