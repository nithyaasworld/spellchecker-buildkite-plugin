# Spellchecker Buildkite Plugin

A [Buildkite plugin](https://buildkite.com/docs/agent/v3/plugins) to check the spelling errors in Markdown files. 

This uses the docker image [tmaier/markdown-spellcheck](https://hub.docker.com/r/tmaier/markdown-spellcheck)  to spell check all the md files present in the root directory of the project.

## Example

```yml
steps:
  - plugins:
      - nithyaasworld/spellchecker#v0.2.9:
          pattern: '*.md'
```

## Tests

To run the tests of this plugin, run 
```sh
docker-compose run --rm tests
```

## License

MIT (see [LICENSE](LICENSE))
