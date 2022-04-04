
 #!/bin/bash
 #  this script cleans up the extra efi entries. 
 # the for loop is in decimal but the entries are in hex!
 
echo Cleaning Efi
for i in `seq 41 326`;
do
    boot_num=$( printf '%x' $i)
    echo $boot_num
    cmd="sudo efibootmgr -b ${boot_num} -B"
    echo $cmd
    $cmd
done
