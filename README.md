# pre-commit-hooks

Git pre-commit hook scripts to integrate with [pre-commit](http://pre-commit.com/#new-hooks) git hook framework.

## Table of contents

- [Configure pre-commit](#configure-pre-commit)
- [Two ways to invoke pre-commit](#two-ways-to-invoke-pre-commit)
- [Supported hooks](#supported-hooks)
  * [`remove-byte-order-mark`](#remove-byte-order-mark)
- [License](#license)

## Configure pre-commit

Just add to your `.pre-commit-config.yaml` file in your git repo:

```yaml
# Pre-commit configuration file
# @see http://pre-commit.com/

-   repo: ...

-   repo: https://github.com/BoGnY/pre-commit-hooks
    rev: master
    hooks:
    -   id: remove-byte-order-mark
        files: ^$
```

## Two ways to invoke pre-commit

If you want to invoke the checks as a git pre-commit hook, run:

    pre-commit install

If you want to run the checks on-demand (outside of git hooks), run:

    pre-commit run --all-files --verbose

## Supported hooks

### remove-byte-order-mark

```yaml
# Pre-commit configuration file
# @see http://pre-commit.com/

-   repo: ...

-   repo: https://github.com/BoGnY/pre-commit-hooks
    rev: master
    hooks:
    -   id: remove-byte-order-mark
        files: ^$
```

A bash script that automatically remove UTF8 and UTF16 byte order mark from any files. Will exit if encounter any error.

## License

The code in this repo is licensed under the [MIT License](LICENSE.md).
