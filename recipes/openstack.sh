case "${node[os]} ${node[version]}" in
ubuntu*12.04*|ubuntu*14.04*)
  sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="console=ttyS0 console=ttyS1,115200"/g'
  update-grub

  template_cp "ttyS1.upstart.conf" /etc/init/ttyS1.conf 
;;
debian*)
  #not tested yet
  #testing jessie ok: GRUB_CMDLINE_LINUX_DEFAULT="quiet console=ttyS0"
  sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="console=ttyS0 console=ttyS1,115200"/g' /etc/default/grub
  update-grub
;;
*)
  exit 1
  ;;
esac
