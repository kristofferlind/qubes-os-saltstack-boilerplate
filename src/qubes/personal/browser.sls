qubes_personal_browser_finalize_template:
  qvm.shutdown:
    - name: template-browser

qubes_personal_browser_qvm_present:
  qvm.present:
    - name: browser
    - template: template-browser
    - label: purple

qubes_personal_browser_qvm_prefs:
  qvm.prefs:
    - name: browser
    - netvm: sys-firewall
