# Policyfile.rb - Describe how you want Chef to configure your workstation.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md

name 'pantry'
# Get cookbooks from supermarket.chef.io
default_source :community

##########
# Run List
# chef-client will run these recipes in the order specified.
# Modify this to include other cookbooks you wish to use, separating
# each recipe name with commas. For example:
#
# run_list(
#   'pantry',
#   'mycookbook'
# )
#
# Add `cookbook` entries for cookbooks that are not found on
# supermarket. See the POLICYFILE_README.md for more information.

run_list(
    'pantry',
    'housepub-win8-services',
    'housepub-hyperv'
)

cookbook 'housepub-win8-services', git: 'https://github.com/jtimberman/housepub-win8-services-cookbook'
cookbook 'housepub-hyperv', git: 'https://github.com/jtimberman/housepub-hyperv-cookbook'

############
# Attributes
# Feel free to modify these values, or add your own attributes for
# other cookbooks.
# Specify values as a space separated list of words. For example,
# %w(git go packer tree)
#
# packages for OS X
default['homebrew']['casks'] = %w(
    java
    atom
    cakebrew
    cargo
    chefdk
    evernote
    firefox
    flowdock
    flux
    github-desktop
    gpgtools
    grandperspective
    google-chrome
    iterm2-beta
    licecap
    onyx
    python
    ssh-tunnel-manager
    vagrant
    virtualbox
)
default['homebrew']['formula'] = %w(
    ack
    awscli
    coreutils
    dos2unix
    direnv
    dffoscope
    freetype
    git
    ispell
    jenv
    jsonpp
    kafkacat
    mackup
    python
    readline
    slurm
    swagger-codegen
    wget
    zsh
    zsh-completions
)
default['homebrew']['taps']       = %w(caskroom/fonts caskroom/versions)
# packages for Windows
default['chocolatey']['packages'] = %w(
google-chrome-x64
  visualstudiocode
  conemu
  putty
  atom
  git
  battle.net
  mumble
  steam
  dropbox
  sysinternals
  irfanview
  dashlane
)
