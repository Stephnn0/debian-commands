# ~/.ssh
cd ~/.ssh

ssh-keygen -t rsa -b 4096 -C "ubu"

eval $(ssh-agent -s)

ssh-add

# .PUB FILE GOES TO GITHUB
#
# inside .bashrc

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/work
