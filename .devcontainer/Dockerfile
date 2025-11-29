FROM qmcgaw/latexdevcontainer:latest-full

RUN apt-get update \
    && apt-get install -y python3 python3-venv python3-pip --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/venv \
    && /opt/venv/bin/pip install --upgrade pip \
    && /opt/venv/bin/pip install pre-commit

ENV PATH="/opt/venv/bin:$PATH"
