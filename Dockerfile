# Inherit from the official SearXNG image
FROM docker.io/searxng/searxng:latest

# Copy your custom settings.yml to the container
# The official image expects it in /etc/searxng/settings.yml
COPY ./searx/settings.yml /etc/searxng/settings.yml

# Ensure the searxng user owns the settings file
USER root
RUN chown searxng:searxng /etc/searxng/settings.yml
USER searxng

# Expose the port that SearXNG listens on (Render will use this)
EXPOSE 8080

# Environment variables will be managed via the Render dashboard or render.yaml
