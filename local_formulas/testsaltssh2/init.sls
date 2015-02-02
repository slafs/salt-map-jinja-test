{% from "testsaltssh2/map.jinja" import testsaltssh2 with context %}

test-salt-ssh:
  cmd:
    - run
    - name: echo {{ testsaltssh2.variable }}
