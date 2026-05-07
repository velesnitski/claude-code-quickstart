# PDF builder image for claude-code-quickstart.
# Bakes in everything pandoc + Eisvogel + mermaid-filter need so the
# release workflow doesn't reinstall TeX Live on every build.
#
# Built and pushed by .github/workflows/build-pdf-image.yml on
# Dockerfile changes; consumed by .github/workflows/pdf.yml as a
# job container.

FROM debian:bookworm-slim

LABEL org.opencontainers.image.source="https://github.com/velesnitski/claude-code-quickstart"
LABEL org.opencontainers.image.description="pandoc + TeX Live + Eisvogel + mermaid-filter, ready to render the quickstart PDF"
LABEL org.opencontainers.image.licenses="MIT"

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      tar \
      gzip \
      pandoc \
      texlive-xetex \
      texlive-fonts-recommended \
      texlive-fonts-extra \
      texlive-latex-recommended \
      texlive-latex-extra \
      librsvg2-bin \
      nodejs \
      npm \
      chromium \
      fonts-dejavu \
      fonts-liberation \
      libnss3 \
      libatk1.0-0 \
      libatk-bridge2.0-0 \
      libcups2 \
      libxcomposite1 \
      libxdamage1 \
      libxrandr2 \
      libgbm1 \
      libxss1 \
      libasound2 \
 && rm -rf /var/lib/apt/lists/*

# Tell puppeteer (used by mermaid-filter) to use the system chromium
# instead of trying to download its own bundled copy.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

RUN npm install -g --omit=dev mermaid-filter

# Eisvogel pandoc template (full tree including partials/).
RUN mkdir -p /root/.pandoc/templates /tmp/eisvogel \
 && curl -fsSL -o /tmp/eisvogel/Eisvogel.tar.gz \
      https://github.com/Wandmalfarbe/pandoc-latex-template/releases/latest/download/Eisvogel.tar.gz \
 && tar -xzf /tmp/eisvogel/Eisvogel.tar.gz -C /tmp/eisvogel \
 && EISVOGEL_DIR=$(dirname "$(find /tmp/eisvogel -name 'eisvogel.latex' -print -quit)") \
 && cp -r "$EISVOGEL_DIR"/. /root/.pandoc/templates/ \
 && rm -rf /tmp/eisvogel \
 && test -f /root/.pandoc/templates/eisvogel.latex

# Puppeteer config that sandboxes nicely in CI runners.
RUN mkdir -p /etc/mermaid-filter \
 && printf '{"args":["--no-sandbox","--disable-setuid-sandbox"]}\n' \
      > /etc/mermaid-filter/puppeteer.json
ENV MERMAID_FILTER_PUPPETEER_CONFIG=/etc/mermaid-filter/puppeteer.json

WORKDIR /work
