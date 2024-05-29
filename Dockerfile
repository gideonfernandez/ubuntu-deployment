# Use the official Metabase image from Docker Hub
FROM metabase/metabase:latest

# Set the environment variables
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/metabase.db

# Expose the Metabase port
EXPOSE 3000