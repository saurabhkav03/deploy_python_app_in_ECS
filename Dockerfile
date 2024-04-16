# Use the official Python 3.9 image as base
FROM python:3.9

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the current directory (where the Dockerfile is located) contents into the /app directory in the container
COPY . /app

# Install the Python dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Expose port 3000 on the container to allow external connections
EXPOSE 3000

# Define the default command to run when the container starts
CMD ["python", "app.py"]
