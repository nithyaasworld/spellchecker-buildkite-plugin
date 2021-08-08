#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

#@test "SpellCheck a file with some spelling error" 
#@test "SpellCheck a file which has no spelling error"

@test "SpellCheck the readme file" {
  stub docker \
    "run --rm -ti -v $PWD:/workdir tmaier/markdown-spellcheck:latest --report '*.md'"
  stub buildkite-agent
    # 'annotate "Found 2 files matching *.md" : echo Annotation created'
  run "$PWD/hooks/command"
  assert_success
  assert_output --partial "Found 2 files matching *.md"
  unstub buildkite-agent
  unstub docker
}