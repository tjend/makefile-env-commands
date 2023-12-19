#!/usr/bin/env bats

setup() {
  load '/usr/lib/bats/bats-support/load'
  load '/usr/lib/bats/bats-assert/load'
}

function make_quoted_command_runs { # @test
  run make quoted_command
  assert_success
}

function make_quoted_command_output { # @test
  EXPECTED='this command is "quoted" in .env using double quotes'
  run make quoted_command
  assert_line --index 1 "${EXPECTED}" # line 2 - index is zero-based
}
