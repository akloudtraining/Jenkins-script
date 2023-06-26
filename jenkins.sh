#!/bin/bash
#This is script is to install Jenkins
#date

echo "Updating the system"
sleep 4
sudo apt update
echo "Installing JAVA"
sleep 4
sudo apt install openjdk-11-jre -y
java -version
echo "Downloading the Jenkins Libraries"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

echo "Installing Jenkins"
sudo apt-get install jenkins -y
sudo systemctl restart jenkins
sleep 10
sudo systemctl status jenkins
echo "please PRESS 'q' on your keyboard to exit the script"
