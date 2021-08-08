# Skip Checkout Buildkite Plugin

A [Buildkite plugin](https://buildkite.com/docs/agent/v3/plugins) to skip Buildkite's default checkout step for jobs that don't need a code checkout until [repository-less builds](https://github.com/buildkite/agent/issues/233) land in the Buildkite agent.

Optionally sets the checkout directory to a specified path.

## Example

```yml
steps:
  - plugins:
      - nithyaasworld/spellchecker#v0.0.1:
          pattern: '*.md'
```

## Tests

To run the tests of this plugin, run
```sh
docker-compose run --rm tests
```

## License

MIT (see [LICENSE](LICENSE))
