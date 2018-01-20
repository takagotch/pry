pry
require 'specinfra'
ls
puts Specinfra::Comand::Base.subclasses.select{
|c| c.to_s =~ /^Specinfra::Command::Base/
}
cd Specinfra::Command::Base::File
ls
show-source get_mtime
cd
puts Specinfra::Command::Base.subclasses.select{
|c| c.to_s =~ /^Specinfra::Command::Redhat/ 
}
cd specinfra::Command::Redhat::Base::Service
ls
show-source check_is_running

pry
require 'specinfra'
require 'specinfra/helper/set'
include Specinfra::Helper::Set
set :backend, :ssh
.vagrant ssh-config ubuntu104
set :host, '127.0.0.1'
set :ssh_options, :user => 'vagrant', :port => 2202,
:key => ['/Users/mizzy/.vagrant.d/insecure_private_key']
os
Specinfra::Runner.check_package_is_installed('nginx')
Specinfra::Runner.install_package('nginx')
Specinfra::Runner.check_package_is_installed('nginx')

