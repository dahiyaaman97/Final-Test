# Use the official Python 3.9 image as base
FROM python:3.9-slim

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install Flask
RUN pip install Flask

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["flask", "run"]
