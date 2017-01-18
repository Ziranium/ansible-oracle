#!/usr/bin/ksh


#!/usr/bin/ksh

/usr/bin/expect - <<EOF
spawn /usr/sbin/oracleasm configure -i
expect {
  "Default user to own the driver interface"
  {
    send "grid\r"
    exp_continue
  }
  "Default group to own the driver interface"
  {
    send "oinstall\r"
    exp_continue
  }
  "Start Oracle ASM library driver on boot (y/n)"
  {
    send "y\r"
    exp_continue
  }
  "Scan for Oracle ASM disks on boot (y/n)"
  {
    send "y\r"
    exp_continue
  }
}
EOF

/usr/sbin/oracleasm configure
