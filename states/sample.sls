test-salt-ssh-gpg-frompillar:
  cmd:
    - run
    - name: {{ pillar.password }}

test-salt-ssh-gpg:
  cmd:
    - run
    - name: |
        -----BEGIN PGP MESSAGE-----
        Version: GnuPG v1

        hQEMA5Sfae08wQwjAQf+I+OHBUMtU9cn8dlYM+7CvtrKpHK/tgfoOm2vp8Xt+tpS
        FtYva+kCVrDRBrj3sGtzjYUncHwSQDZwECddNPb4y4FuUhRVrLhw3CqJ6JHzNZ7Z
        gVzD4S0dfEm3qdBYAgZHgbtyv1Myt4srza5ow4N9VOOe/SRlANdAiSPkFgjakGJt
        5Bw7wBuQ5cOHlK1aIW2QQLRO7cPf25w5Ws5+GlKL/TjPuinnfrxTWsByXsJsKERo
        TZTCAbN4XTjA4rTVhGERMWgQ1mLh58BfKKibkFQCEqKyuRcthD+DxGENSkVNWKlJ
        suapPHSm5pmwrtyd4fxummsuxYkN0RM4NvnxNzn+nNJGASgEW4MA92qmp4MTtM7u
        ZgiA49bPmN5WW7+trwS5PNddhHobehRTSgZ9c4NiHiosnRFJYFLgA4D3q4XulFqb
        0NBTP1XAZw==
        =1IBo
        -----END PGP MESSAGE-----
