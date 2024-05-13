# check-trailing-whitespace

Checks Trailing Whitespace while ignoring certain folders like tribits.

## Example

#### Workflow

```yaml
name: Example

on: pull_request

jobs:
  example:
    name: Check Trailing Whitespace
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: UT-Computational-NE/check-trailing-whitespace@main
```
