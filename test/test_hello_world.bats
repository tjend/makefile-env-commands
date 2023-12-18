#!/usr/bin/env bats

setup() {
  load '/usr/lib/bats/bats-support/load'
  load '/usr/lib/bats/bats-assert/load'
}

function make_help_runs { # @test
  run make
  assert_success
}

function make_hello_world_command_available { # @test
  CONTROL_CHARS='(\e[[(][0-9;]*[a-zA-Z])*' # match control characters used by tput to bold the command names
  EXPECTED="^${CONTROL_CHARS}hello_world${CONTROL_CHARS}: "
  run make
  assert_line --index 0 --regexp "${EXPECTED}" # line 1 - index is zero-based
}

function make_hello_world_output { # @test
  EXPECTED='hello world'
  run make hello_world
  assert_line --index 1 "${EXPECTED}" # line 2 - index is zero-based
}
