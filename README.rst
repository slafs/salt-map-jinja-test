TO replicate issue (salt/issues/19114),

1. Clone this repo and ``cd`` into the cloned directory

2. Update the user in `roster` to a valid user

3. from this directory (in a virtualenv) run::

    pip install -r requirements.txt

4. *(EXPECTED)* The following works fine:::

    salt-call --local pillar.get password
    salt-call --local state.show_sls sample

5. put the generated master ssh into your authorized keys::

    cat `pwd`/etc/salt/pki/master/ssh/salt-ssh.rsa.pub >>~/.ssh/authorized_keys

6. *(BROKEN)* The following does not work:::

    salt-ssh -i local pillar.get password
    salt-ssh -i local state.show_sls sample
