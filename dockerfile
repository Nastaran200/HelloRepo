#Deriving the latest base image
FROM python:latest

#Labels as key value pair
LABEL Maintainer="nastaran"

# Any working directory can be chosen as per choice like '/' or '/home' etc
WORKDIR /usr/app/src

#to COPY the remote file at working directory in container
COPY hello.py ./

# Now the structure looks like this '/usr/app/src/hello.py'
#CMD instruction should be used to run the software
#contained by your image, along with any arguments.
CMD [ "python3", "./hello.py"]
