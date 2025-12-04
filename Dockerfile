# Use official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app
COPY . .

# Run on port 8080
EXPOSE 8080
CMD ["python", "main.py"]
