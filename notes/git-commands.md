#### config ####
git config --[global or local] credential.helper cache

#### set PAT ####
git remote set-url origin https://[PAT TOKEN]@github.com/[username]/[repo]

### use a specific ssh file####
GIT_SSH_COMMAND='ssh -i private_key_file -o IdentitiesOnly=yes' git clone user@host:repo.git
git clone -c "core.sshCommand=ssh -i ~/.ssh/id_rsa_work" git@github.com:corporateA/webapp.git

#### set what ssh key to use #####
git config core.sshCommand "ssh -i ~/.ssh/id_rsa_work"

