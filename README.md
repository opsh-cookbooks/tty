# tty setting

### usage

```
#for kvm console
ops-dev recipe tty-sh kvm

#for openstack console
ops-dev recipe tty-sh openstack

#ttyS0 for log
#ttyS1 for console:
virsh console instance-0000003a --devname serial1
```
