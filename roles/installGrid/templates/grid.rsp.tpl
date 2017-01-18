oracle.install.responseFileVersion=/oracle/install/rspfmt_crsinstall_response_schema_v12.1.0
ORACLE_HOSTNAME={{ ansible_hostname }}
ORACLE_BASE={{ grid_base }}
ORACLE_HOME={{ grid_home }}
INVENTORY_LOCATION={{ oracle_root }}/oraInventory
SELECTED_LANGUAGES=en
oracle.install.option=HA_CONFIG
oracle.install.asm.OSDBA=oinstall
oracle.install.asm.OSOPER=oinstall
oracle.install.asm.OSASM=oinstall
oracle.installer.autoupdates.option=SKIP_UPDATES
oracle.install.crs.config.gpnp.configureGNS=false
oracle.install.asm.SYSASMPassword=Password1
oracle.install.asm.monitorPassword=Password1
oracle.install.crs.config.autoConfigureClusterNodeVIP=false
oracle.install.asm.diskGroup.name=DG_DATA
oracle.install.asm.diskGroup.redundancy=EXTERNAL
oracle.install.asm.diskGroup.disks={{ grid_disklist[:-1] }}
oracle.install.asm.diskGroup.diskDiscoveryString=/dev/oracleasm/disks/


