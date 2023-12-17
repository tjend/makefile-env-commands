Describe 'hello-world'
  Mock tput
    # return blank for all tput commands, allowing simpler matching without
    # highlight characters
  End

  BeforeEach 'cd examples/hello-world'

  It '`make` exits successfully'
    When run command make
    The status should be success
    The output should be present
  End

  It '`make hello_world` command is available'
    When run command make
    The line 1 of output should start with 'hello_world:'
  End

  It '`make hello_world` outputs `hello world`'
    When run command make hello_world
    The line 2 of output should equal 'hello world'
  End
End
