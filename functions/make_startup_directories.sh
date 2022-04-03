# This function Makes the Startup Directories to pentest a resource
function mksd() {
	mkdir -p $1/EPT/tools $1/EPT/scope $1/EPT/scans $1/EPT/logs $1/EPT/evidence/screenshots  $1/EPT/evidence/data  $1/EPT/evidence/credentials  
	mkdir -p $1/IPT/tools $1/IPT/scope $1/IPT/scans $1/IPT/logs $1/IPT/evidence/screenshots  $1/IPT/evidence/data  $1/IPT/evidence/credentials  
}

