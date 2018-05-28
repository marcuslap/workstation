package 'tree' do
  action :install
end
package 'ntp' do
  action :install
end

package 'emacs'

package 'vim-enhanced'

package 'nano'

package 'git' do 
  action :install
end

template '/etc/motd' do
  source  'motd.erb'
  action :create
end
