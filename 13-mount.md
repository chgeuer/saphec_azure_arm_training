# Mounting a problematic OS disk on a diagnostics VM

## Show available devices

```bash
ls -ld /sys/block/sd*/device
```

### output

```txt
[root@server scsi]# ls -ld /sys/block/sd*/device
lrwxrwxrwx 1 root root 0 Jan  4 15:44 /sys/block/sda/device -> ../../../0:0:0:0
lrwxrwxrwx 1 root root 0 Jan  4 15:44 /sys/block/sdb/device -> ../../../1:0:1:0
lrwxrwxrwx 1 root root 0 Feb  6 21:02 /sys/block/sdc/device -> ../../../3:0:0:0
lrwxrwxrwx 1 root root 0 Feb  6 21:07 /sys/block/sdd/device -> ../../../3:0:0:2
```

## Mount the disk

```bash
mkdir /temporarymount
mount /dev/sdc1 /temporarymount -t ext4
cd /temporarymount/users/chgeuer
```
