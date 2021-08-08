# Spellchecker Buildkite Plugin

A [Buildkite plugin](https://buildkite.com/docs/agent/v3/plugins) to check the spelling errors in Readme file.

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
