control "V-72173" do
  title "All uses of the umount command must be audited."
  desc  "Reconstruction of harmful events or forensic analysis is not possible
if audit records do not contain enough information.At a minimum, the
organization must audit the full-text recording of privileged mount commands.
The organization must maintain audit trails in sufficient detail to reconstruct
events to determine the cause and impact of compromise."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000042-GPOS-00020"
  tag "satisfies": ["SRG-OS-000042-GPOS-00020", "SRG-OS-000392-GPOS-00172"]
  tag "gid": "V-72173"
  tag "rid": "SV-86797r4_rule"
  tag "stig_id": "RHEL-07-030750"
  tag "fix_id": "F-78527r4_fix"
  tag "cci": ["CCI-000135", "CCI-002884"]
  tag "nist": ["AU-3 (1)", "MA-4 (1) (a)", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Verify the operating system generates audit records when
successful/unsuccessful attempts to use the \"umount\" command occur.Check for
the following system calls being audited by performing the following series of
commands to check the file system rules in \"/etc/audit/audit.rules\": # grep
-i \"/bin/umount\" /etc/audit/audit.rules-a always,exit -F path=/bin/umount -F
perm=x -F auid>=1000 -F auid!=4294967295 -k privileged-mount  If the command
does not return any output, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"umount\" command occur.Add or
update the following rule in \"/etc/audit/rules.d/audit.rules\": -a always,exit
-F path=/bin/umount -F perm=x -F auid>=1000 -F auid!=4294967295 -k
privileged-mountThe audit daemon must be restarted for the changes to take
effect."
end

