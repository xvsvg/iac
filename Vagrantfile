Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  SERVERS = 1
  BRIDGE = "en0: Wi-Fi (Wireless)"

  ssh_key = File.read(File.expand_path("C:\\Users\\xvsvg\\.ssh\\ansible_key.pub")).strip

  def create_host(config, hostname, ip, ssh_key)
    config.vm.define hostname do |host|
      host.vm.network "private_network", ip: ip
      host.vm.network "public_network", bridge: BRIDGE
      host.vm.hostname = hostname
      host.vm.provision "shell", inline: <<-SHELL
        apt-get update && apt-get install -y python3
        mkdir -p /home/vagrant/.ssh
        echo '#{ssh_key}' > /home/vagrant/.ssh/authorized_keys
        chown -R vagrant:vagrant /home/vagrant/.ssh
        chmod 700 /home/vagrant/.ssh
        chmod 600 /home/vagrant/.ssh/authorized_keys
      SHELL
      yield host if block_given?
    end
  end

  (1..SERVERS).each do |machine_id|
    create_host(config, "srv#{machine_id}", "192.168.56.#{200+machine_id}", ssh_key)
  end
end
