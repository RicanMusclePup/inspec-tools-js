control "V-72433" do
  title "The operating system must implement certificate status checking for
PKI authentication."
  desc  "Using an authentication device, such as a CAC or token that is
separate from the information system, ensures that even if the information
system is compromised, that compromise will not affect credentials stored on
the authentication device.Multifactor solutions that require devices separate
from information systems gaining access include, for example, hardware tokens
providing time-based or challenge-response authenticators and smart cards such
as the U.S. Government Personal Identity Verification card and the DoD Common
Access Card.A privileged account is defined as an information system account
with authorizations of a privileged user.Remote access is access to DoD
nonpublic information systems by an authorized user (or an information system)
communicating through an external, non-organization-controlled network. Remote
access methods include, for example, dial-up, broadband, and wireless.This
requirement only applies to components where this is specific to the function
of the device or has the concept of an organizational user (e.g., VPN, proxy
capability). This does not apply to authentication for the purpose of
configuring the device itself (management).Requires further clarification from
NIST."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000375-GPOS-00160"
  tag "satisfies": ["SRG-OS-000375-GPOS-00160", "SRG-OS-000375-GPOS-00161",
"SRG-OS-000375-GPOS-00162"]
  tag "gid": "V-72433"
  tag "rid": "SV-87057r4_rule"
  tag "stig_id": "RHEL-07-041003"
  tag "fix_id": "F-78785r3_fix"
  tag "cci": ["CCI-001948", "CCI-001953", "CCI-001954"]
  tag "nist": ["IA-2 (11)", "IA-2 (12)", "IA-2 (12)", "Rev_4"]
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
  tag "check": "Verify the operating system implements certificate status
checking for PKI authentication.Check to see if Online Certificate Status
Protocol (OCSP) is enabled on the system with the following command:# grep
cert_policy /etc/pam_pkcs11/pam_pkcs11.confcert_policy = ca, ocsp_on,
signature;cert_policy = ca, ocsp_on, signature;cert_policy = ca, ocsp_on,
signature;There should be at least three lines returned. If \"oscp_on\" is not
present in all \"cert_policy\" lines in \"/etc/pam_pkcs11/pam_pkcs11.conf\",
this is a finding."
  tag "fix": "Configure the operating system to do certificate status checking
for PKI authentication.Modify all of the \"cert_policy\" lines in
\"/etc/pam_pkcs11/pam_pkcs11.conf\" to include \"ocsp_on\"."
end

