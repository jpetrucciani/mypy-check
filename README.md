# mypy-check
GitHub Action for [mypy](https://mypy.readthedocs.io/en/master/)

Make sure you have a `mypy.ini` or `setup.cfg` file at the root of your repository!

## Inputs

### `path`

**Optional** The path and args to run mypy

**Default** `"."`

## Outputs

None

## Example usage

```yaml
uses: mcxemic/mypy-check@v1.0.0

# or specify a path and args
uses: mcxemic/mypy-check@v1.0.0
with:
  path: '.'
  args: '--ignore-missing-imports --pretty --show-error-context'
```
