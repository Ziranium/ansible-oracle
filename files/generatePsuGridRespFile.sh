#!/usr/bin/ksh


EMOCMRSP=$1/OPatch/ocm/bin/emocmrsp
OCM_FILE=$2/gridpsu.rsp

/usr/bin/expect - <<EOF
spawn $EMOCMRSP -no_banner -output $OCM_FILE
expect {
  "Email address/User Name:"
  {
    send "\r"
    exp_continue
  }
  "Do you wish to remain uninformed of security issues*"
  {
    send "Y\r"
    exp_continue
  }
}
EOF

