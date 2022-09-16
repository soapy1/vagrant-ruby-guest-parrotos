begin
  require "vagrant"
rescue LoadError
  raise "Vagrant is required!"
end

require "guest/guest"

module VagrantGuestParrotOS
  class Plugin < Vagrant.plugin("2")
    name "VagrantGuestParrotOS"
    description <<-DESC
    Guest plugin for ParrotOS
    DESC

    guest(:parrotos, :debian) do
      Guest
    end
  end
end
