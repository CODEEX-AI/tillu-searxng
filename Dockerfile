# Inherit from the official SearXNG image
FROM docker.io/searxng/searxng:latest

# Expose the port that SearXNG listens on (default is 8080)
EXPOSE 8080

# Environment variables will be managed via the Render dashboard.
# Render automatically detects the port 8080.
# If you need to use a different port, set the SEARXNG_PORT environment variable.
