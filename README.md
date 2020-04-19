# Go Mod Action

This action execute `go mod tidy` to check if any unused imports exists inside your `go.mod` file
and return the command output if fail.

## Outputs

`gomod-output`

The list of unused imports if the command fail.

For example:

```bash
unused github.com/cespare/reflex
```

## Example Usage

```yaml
uses: Jerome1337/gomod-action@v1.0.0
````
