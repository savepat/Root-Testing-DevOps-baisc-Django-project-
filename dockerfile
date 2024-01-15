# Use Python 3.8 as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app/
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the contents of the local src directory to the working directory
COPY . /app/

# Expose port 8000
EXPOSE 8000

# Run Django migrations and start the development server
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
