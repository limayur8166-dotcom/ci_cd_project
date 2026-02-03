# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . /app

# Install pytest
RUN pip install pytest

# Run tests to make sure code is valid
RUN pytest

# Default command to run the app
CMD ["python3", "app.py"]

