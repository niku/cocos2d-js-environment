package "git-core"
package "unzip"

default_user = "vagrant"
home = "/home/#{default_user}"

execute "curl -O http://cdn.cocos2d-x.org/cocos2d-js-v3.2.zip" do
  user default_user
  cwd "/var/tmp"
  not_if "test -e /var/tmp/cocos2d-js-v3.2.zip"
end

execute "unzip /var/tmp/cocos2d-js-v3.2.zip" do
  user default_user
  cwd home
  not_if "test -e #{home}/cocos2d-js-v3.2"
end

execute "yes '' | ./setup.py" do
  user default_user
  cwd "#{home}/cocos2d-js-v3.2"
  not_if "grep COCOS_CONSOLE_ROOT #{home}/.bashrc"
end

execute "./cocos new MyGame -l js -d /cocos2d-js-games" do
  user default_user
  cwd "#{home}/cocos2d-js-v3.2/tools/cocos2d-console/bin"
  not_if "ls /cocos2d-js-games/* > /dev/null 2>&1"
end

remote_file "#{home}/c" do
  source "c"
  mode "755"
  owner default_user
  group default_user
end
