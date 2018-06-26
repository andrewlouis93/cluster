#!/opt/rubies/2.4.1/bin/ruby
require_relative "../config"

system "kops create cluster --cloud=digitalocean \
    --name=cluster.andrewlouis.org \
    --image=ubuntu-16-04-x64 \
    --networking=flannel \
    --zones=tor1 \
    --ssh-public-key=~/.ssh/id_rsa.pub"
system "kops update cluster cluster.andrewlouis.org --yes"
