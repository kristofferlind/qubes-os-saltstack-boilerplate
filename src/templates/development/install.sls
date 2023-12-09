templates_development_uptodate:
  pkg.uptodate:
    - refresh: True

templates_development_install:
  pkg.installed:
    - pkgs:
      - git
      - openssh-client
      - direnv
      - dotenv
    - skip_suggestions: True
    - install_recommends: False

templates_development_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://templates/development/mimeapps.list
    - user: root
    - group: root
    - mode: '0644'
    - replace: True
