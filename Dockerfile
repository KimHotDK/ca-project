# Dockerfile for docker-flask web application

# Add a base image to build this image off of
FROM python:2.7-alpine

#copy files required for app to run
COPY . /usr/src/app

#Install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# Add a default port containers from this image should expose
EXPOSE 5000

# Add a default command for this image
CMD ["python", "/usr/src/app/run.py"]