# Use an official slim Python base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all local files into the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "api_stockout:app", "--host", "0.0.0.0", "--port", "8080"]
