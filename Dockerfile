# Dockerfile
FROM redroid/redroid:11.0.0-latest

ADD system.zip /

HEALTHCHECK --interval=10s --timeout=10s --retries=600 \
  CMD adb devices || exit 1