qubes_personal_development_finalize_template:
  qvm.shutdown:
    - name: template-development

qubes_personal_development_qvm_present:
  qvm.present:
    - name: development
    - template: template-development
    - label: purple

qubes_personal_development_qvm_prefs:
  qvm.prefs:
    - name: development
    - netvm: sys-firewall
