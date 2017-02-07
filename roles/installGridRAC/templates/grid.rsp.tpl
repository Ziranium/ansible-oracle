oracle.install.responseFileVersion=/oracle/install/rspfmt_crsinstall_response_schema_v12.1.0
ORACLE_HOSTNAME={{ ansible_hostname }}
ORACLE_BASE={{ grid_base }}
ORACLE_HOME={{ grid_home }}
INVENTORY_LOCATION={{ oracle_root }}/oraInventory
SELECTED_LANGUAGES=en
oracle.install.option=CRS_CONFIG
oracle.install.asm.OSDBA=oinstall
oracle.install.asm.OSOPER=oinstall
oracle.install.asm.OSASM=oinstall
oracle.installer.autoupdates.option=SKIP_UPDATES
oracle.install.crs.config.gpnp.configureGNS=false
oracle.install.asm.SYSASMPassword=Password1
oracle.install.asm.monitorPassword=Password1
oracle.install.crs.config.autoConfigureClusterNodeVIP=false
oracle.install.crs.config.ClusterType=STANDARD
oracle.install.crs.config.clusterName={{ grid_cluname }}
oracle.install.crs.config.clusterNodes={{ grid_nodes }}
oracle.install.crs.config.networkInterfaceList={{ grid_if_public }}:1,{{ grid_if_private }}:2
oracle.install.crs.config.storageOption=ASM_STORAGE
oracle.install.asm.diskGroup.name=DG_CRS
oracle.install.asm.diskGroup.redundancy=EXTERNAL
oracle.install.asm.diskGroup.disks={{ grid_disklist[:-1] }}
oracle.install.asm.diskGroup.diskDiscoveryString=ORCL:*


