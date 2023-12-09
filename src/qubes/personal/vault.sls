qubes_personal_vault_finalize_template:
  qvm.shutdown:
    - name: template-vault

qubes_personal_vault_qvm_present:
  qvm.present:
    - name: vault
    - template: template-vault
    - label: black

qubes_personal_vault_qvm_prefs:
  qvm.prefs:
    - name: vault
    - netvm: none
