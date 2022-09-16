require 'logger'

module VagrantGuestParrotOS
  class Guest < Vagrant.plugin("2", :guest)
    def detect?(machine)
      machine.communicate.test("cat /etc/os-release | grep ID=parrot")
    end
  end
end
