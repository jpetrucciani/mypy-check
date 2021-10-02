# mypy-check

GitHub Action for [mypy](https://mypy.readthedocs.io/en/master/)

Make sure you have a `mypy.ini` or `setup.cfg` file at the root of your repository!

## Inputs

### `path`

**Optional** The path to run mypy on

**Default** `"."`

### `mypy_flags`

**Optional** Optional mypy flags (refer to `mypy --help`)

**Default** `""`

## Outputs

None

## Example usage

```yaml
uses: jpetrucciani/mypy-check@master

# or specify a path!
uses: jpetrucciani/mypy-check@master
with:
  path: '.'


# or specify additional mypy flags!
uses: jpetrucciani/mypy-check@master
with:
  mypy_flags: '--config-file .mypy.ini'
```
