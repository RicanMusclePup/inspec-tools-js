control "V-71951" do
  title "The delay between logon prompts following a failed console logon
attempt must be at least four seconds."
  desc  "Configuring the operating system to implement organization-wide
security implementation guides and security checklists verifies compliance with
federal standards and establishes a common security baseline across DoD that
reflects the most restrictive security posture consistent with operational
requirements.Configuration settings are the set of parameters that can be
changed in hardware, software, or firmware components of the system that affect
the security posture and/or functionality of the system. Security-related
parameters are those parameters impacting the security state of the system,
including the parameters required to satisfy other security control
requirements. Security-related parameters include, for example, registry
settings; account, file, and directory permission settings; and settings for
functions, ports, protocols, services, and remote connections."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00226"
  tag "gid": "V-71951"
  tag "rid": "SV-86575r1_rule"
  tag "stig_id": "RHEL-07-010430"
  tag "fix_id": "F-78303r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
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
  tag "check": "Verify the operating system enforces a delay of at least four
seconds between console logon prompts following a failed logon attempt.Check
the value of the \"fail_delay\" parameter in the \"/etc/login.defs\" file with
the following command:# grep -i fail_delay /etc/login.defsFAIL_DELAY 4If the
value of \"FAIL_DELAY\" is not set to \"4\" or greater, this is a finding."
  tag "fix": "Configure the operating system to enforce a delay of at least
four seconds between logon prompts following a failed console logon
attempt.Modify the \"/etc/login.defs\" file to set the \"FAIL_DELAY\" parameter
to \"4\" or greater:FAIL_DELAY 4"
end

