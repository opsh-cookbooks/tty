case "${node[os]} ${node[version]}" in
ubuntu*12.04*|ubuntu*14.04*)
  template_cp "ttyS0.upstart.conf" /etc/init/ttyS0.conf 
;;
debian*)
  #testing jessie ok: GRUB_CMDLINE_LINUX_DEFAULT="quiet console=ttyS0"
  sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="console=ttyS0"/g' /etc/default/grub
  update-grub
;;
*)
  exit 1
  ;;
esac
