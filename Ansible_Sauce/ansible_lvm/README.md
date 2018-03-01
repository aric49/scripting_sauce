Ansible LVM
=========

Easily mount and configure additional drives and mountpoints using LVM.

Requirements
------------

You must have an additional drive already attached to the VM or baremetal server you are running this role against (`/dev/drive`)

Role Variables
--------------
* `data_disk`:  The path of the physical disk (`/dev/sdb`)
* `vg_name`: Name of the volume group the new disk should be configured in
* `lv_name`: The name of the logical volume to configured the disk in


Dependencies
------------

None
