# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Delete the scripts:
rm -f /home/vagrant/{base,chef,cleanup,puppet,vagrant,virtualbox,zerodisk}.sh
