TO demonstrate an issue with salt-ssh and formula like layouts,

1. Clone this repo and ``cd`` into the cloned directory

2. Update the user in `roster` to a valid user

3. from this directory (in a virtualenv) run::

    pip install -r requirements.txt

4. *(EXPECTED)* The following works fine:::

    salt-call --local state.show_sls testsaltssh
    salt-call --local state.sls testsaltssh
    salt-call --local state.show_sls testsaltssh2
    salt-call --local state.sls testsaltssh2

5. put the generated master ssh into your authorized keys::

    cat $PWD/etc/salt/pki/master/ssh/salt-ssh.rsa.pub >> ~/.ssh/authorized_keys

6. *(BROKEN)* The following does not work:::

    salt-ssh -i local state.show_sls testsaltssh
    salt-ssh -i local state.sls testsaltssh

    salt-ssh -i local --extra-filerefs=salt://testsaltssh/map.jinja state.show_sls testsaltssh
    salt-ssh -i local --extra-filerefs=salt://testsaltssh/map.jinja state.sls testsaltssh

7. for the contrast local formulas work as expected::

    salt-ssh -i local state.show_sls testsaltssh2
    salt-ssh -i local state.sls testsaltssh2
