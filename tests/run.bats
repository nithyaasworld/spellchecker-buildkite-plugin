#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

#@test "SpellCheck a file with some spelling error" 
#@test "SpellCheck a file which has no spelling error"

@test "SpellCheck the readme file" {
  stub docker \
    "run --rm -ti -v $PWD:/workdir tmaier/markdown-spellcheck:latest --report '*.md' : echo spell check done "
  stub buildkite-agent \
   "annotate : echo Annotation added"
  run "$PWD/hooks/command"
  assert_success
  assert_output --partial "spell check done"
  assert_output --partial "Annotation added"
  unstub buildkite-agent
  unstub docker
}