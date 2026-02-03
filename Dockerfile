# Dockerfile
FROM redroid/redroid:11.0.0-latest

ADD system.zip /

HEALTHCHECK --interval=10s --timeout=10s --retries=60 \
  CMD getprop sys.boot_completed | grep -q 1 || exit 1
