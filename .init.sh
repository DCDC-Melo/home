brew install gpg
gpg --list-keys
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.dc.private.key.gpg | tee $(mktemp) && gpg --import $_
