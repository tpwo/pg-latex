FROM qmcgaw/latexdevcontainer:latest-full

COPY --from=ghcr.io/astral-sh/uv:0.9.16 /uv /uvx /bin/

RUN uv tool install pre-commit --with pre-commit-uv

ENV PATH="/root/.local/bin/:$PATH"
