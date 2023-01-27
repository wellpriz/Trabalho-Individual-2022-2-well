# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./ /app

#update pip 
RUN pip install --upgrade pip

# Copy the requirements into the container at /etc
COPY ./requirements.txt /etc

# Install any needed packages specified in requirements.txt
RUN pip install -r /etc/requirements.txt

WORKDIR /app/src



# Run app.py when the container launches
CMD ["python", "main.py"]
