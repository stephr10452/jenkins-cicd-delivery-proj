Jenkins CI/CD Delivery Project by Stephanie Reyes 

This project is impleming the continou intergration and continous deployment for this simple application that uses GItHub, Jenkins, Docker , Docker Hub. Once a commit is made it automatically triggers a Jenkins pipeline that builds a Docker image and publishes it to a private Docker Hub repository. And that is the all

Structure of Project 
Stephanie.Reyes.py is the python application
DOckerFile is what builds a container image for the application
Jenkinsfile jenkin s pipeline definition
REadme.md is the instruction a.k.a the file we are currently in

Pre requesities 

A linux machine with Docker installed
Git installed 
A Github account and repo for the project 
A docker hub with a private repo created
Jenkins installed and runing with docker pipeline and github intergration

running the app locally without Docker 
python3 Stephanie.Reyes.py

running the app in Docker 
docker build -t stephanie-reyes-app
docker run --rm stephanie-reyes-app

jenkins pipeline setup 
1. Create a pipeline job in Jenkins. 
2. Set pipeline def to "Pipeline script from SCM." point at this Github repo 
3. Set Script Path to jenkins file 
4. Ebanble "github hook trigger and GITScm polling' under Build Triggers/   
# Testing automatic webhook trigger

i am testing for showcase 
