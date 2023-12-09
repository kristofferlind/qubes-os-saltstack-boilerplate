qubes_work-company1_browser_finalize_template:
  qvm.shutdown:
    - name: template-browser

qubes_work-company1_browser_qvm_present:
  qvm.present:
    - name: work-company1-browser
    - template: template-browser
    - label: blue

qubes_work-company1_browser_qvm_prefs:
  qvm.prefs:
    - name: work-company1-browser
    - netvm: sys-firewall
