vmguest
=======
vmguest
=======
This is the vmguest Puppet module. This module contains a custom facter that leverages VM Tools in a VMware Virtual Machine to look at the guestinfo.vminstanceuuid field that is set for the VM in vCenter. This setting persistently lives in the VMX file of the VM, but can be set manually from the GUI or by other API methods.  It is considered an Advanced Setting per VM.

Example Usage
=============
Puppet modules that are Virtual Machine oriented (require instanceUuid form vCenter) can leverage this fact to ensure uniqueness and simplify integrations.
