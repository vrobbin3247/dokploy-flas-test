# Use an official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the app files
COPY app.py /app
COPY templates /app/templates

# Install Flask
RUN pip install flask

# Expose the port Flask runs on
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]