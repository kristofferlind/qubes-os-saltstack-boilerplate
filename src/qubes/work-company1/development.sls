qubes_work-company1_development_finalize_template:
  qvm.shutdown:
    - name: template-development

qubes_work-company1_development_qvm_present:
  qvm.present:
    - name: work-company1-development
    - template: template-development
    - label: blue

qubes_work-company1_development_qvm_prefs:
  qvm.prefs:
    - name: work-company1-development
    - netvm: sys-firewall
