FROM python:3.13

# Set the working directory
WORKDIR /app

# Copy the requirements file into the working directory
#COPY requirements.txt /app 
COPY . /app
RUN apt-get update


CMD ["python" ,"manage.py" ,"runserver"]