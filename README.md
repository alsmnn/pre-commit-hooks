pre-commit-hooks
================

See also: https://github.com/pre-commit/pre-commit


### Using pre-commit-hooks with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/tetienne/pre-commit-hooks
    rev: v1.0.0  # Use the ref you want to point at
    hooks:
    -   id: poetry-update
    # -   id: ...
```

### Hooks available

#### `poetry-update`
Run `poetry update` when poetry.lock file has been modified during a checkout.
