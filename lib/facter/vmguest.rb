require 'facter'

  Facter.add(:vminstanceuuid) do
    if Facter.value('operatingsystem') == 'windows'
      output = `C:\\Program Files\\VMware\\VMware Tools\\vmtoolsd.exe --cmd "info-get guestinfo.vminstanceuuid"`
    else
      output = `vmtoolsd --cmd "info-get guestinfo.vminstanceuuid"`
    end

    if output != "" && output != nil
      setcode do
        output.chomp
      end
    end
  end



