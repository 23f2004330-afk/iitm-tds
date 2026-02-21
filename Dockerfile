# Use Python 3.11 slim as base
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy all project files
COPY . .

# Install dependencies if you have requirements.txt
RUN if exist requirements.txt pip install --no-cache-dir -r requirements.txt

# Default command
CMD ["python", "--version"]
