templates_vault_template_installed:
  qvm.template_installed:
    - name: debian-12-minimal

templates_vault_clone:
  qvm.clone:
    - name: template-vault
    - source: debian-12-minimal
