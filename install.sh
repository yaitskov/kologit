#!/bin/env bash


mkdir -p ~/.bin/scripts
pushd ~/.bin/scripts
git clone https://github.com/yaitskov/kologit.git
popd

cat <<EOF >> ~/.bashrc
export PATH=\$HOME/.bin/scripts/kologit:\$PATH
EOF


cat<<EOF
You can update global git config to ignore kologit system folder:
 ~/.gitconfig:
[core]
	pager = cat
	excludesfile = /home/bob/.gitignore

~/.gitignore:
.kologit

-----------------------------------------------------------------------------
Use kologit for help:
\$ kologit
EOF

export PATH=$HOME/.bin/scripts/kologit:$PATH

kologit
