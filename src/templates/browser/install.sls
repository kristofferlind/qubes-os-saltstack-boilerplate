templates_browser_uptodate:
  pkg.uptodate:
    - refresh: True

templates_browser_install:
  pkg.installed:
    - pkgs:
      - pulseaudio-qubes # audio for meetings
      - qubes-usb-proxy # allow passing audio/video devices for meetings
    - skip_suggestions: True
    - install_recommends: False

templates_browser_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://templates/browser/mimeapps.list
    - user: root
    - group: root
    - mode: '0644'
    - replace: True
