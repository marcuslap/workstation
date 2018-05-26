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

file '/etc/motd' do
  content 'This server is the property of Marcus LaPilusa'
  action :create 
  owner 'root'
  group 'root'
end
