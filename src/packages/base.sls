base_update:
  pkg.uptodate:
    - refresh: True

base_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
    - skip_suggestions: True
    - install_recommends: False
    - order: 1
