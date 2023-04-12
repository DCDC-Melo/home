brew install gpg
gpg --list-keys
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.dc.private.key.gpg | tee $(mktemp) && gpg --import $_
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.zshenv.gpg | tee $(mktemp) && source $_
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.zshrc.gpg | tee $(mktemp) && source $_
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.shhi.gpg | tee $(mktemp) && fc -R $_
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.shhm.gpg | tee $(mktemp) && fc -R $_
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.shhs.gpg | tee $(mktemp) && fc -R $_
curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.zsh_history.gpg | tee $(mktemp) && fc -R $_

