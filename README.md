TO replicate issue, 

 1. Update the paths in `master` and `Saltfile` as needed to point to this dir

 2. Update the user in `roster` to a valid user

 3. from this directory (in a virtualenv) run:

        pip install -r requirements.txt

 4. (EXPECTED) The following works fine:

        salt-call --local pillar.get password

 5. put the generated master ssh into your authorized keys

        cat /../salt-gpg-test/etc/salt/pki/master/ssh/salt-ssh.rsa.pub >>~/.ssh/authorized_keys

 6. (BROKEN) The following does not work:

        salt-ssh -i local pillar.get password
