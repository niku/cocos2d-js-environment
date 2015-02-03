Vagrant.configure(2) do |config|
  config.vm.box = "chef/debian-7.8"

  config.vm.network :forwarded_port, guest: 8000, host: 3939
  config.vm.synced_folder "../cocos2d-js-games", "/cocos2d-js-games", create: true

  config.vm.provision :itamae do |itamae|
    itamae.sudo = true
    itamae.recipes = "recipe.rb"
  end
end
