#!/usr/bin/ksh


SSHSETUP=$1
NODELIST=$2
SSHUSER=$3
SSHPWD=$4

/usr/bin/expect - <<EOF
spawn $SSHSETUP -user $SSHUSER -hosts "$NODELIST" -advanced -confirm -noPromptPassphrase
for {set x 0} {\$x<4} {incr x} {
  expect {
    "password:"
    {
      send "$SSHPWD\r"
      exp_continue
    }
  }
}
EOF

