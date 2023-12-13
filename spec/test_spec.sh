Describe 'all tests'
  Mock tput
    # all tput commands will return blank, allowing matching without highlight
    # characters making it more difficult
  End

  It '`make` exits successfully'
    When run command make
    The status should be success
    The output should be present
  End

  It '`make world` is available'
    output() {
      make | grep ^world:
    }
    When call output
    The output should start with "world:"
  End

  It '`make world` outputs `hello world`'
    When run command make world
    The line 2 of output should equal 'hello world'
  End
End
