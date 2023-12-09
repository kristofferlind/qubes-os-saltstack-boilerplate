templates_vault_uptodate:
  pkg.uptodate:
    - refresh: True

templates_vault_install:
  pkg.installed:
    - pkgs:
      - keepassxc
    - skip_suggestions: True
    - install_recommends: False

templates_vault_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://templates/vault/mimeapps.list
    - user: root
    - group: root
