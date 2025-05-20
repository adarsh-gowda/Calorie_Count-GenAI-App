# Calorie_Count-GenAI-App

# How to run this app
## 1. Login with your AWS console and launch an EC2 instance
## 2. Run the following commands

Note: Do the port mapping to this port:- 8501

```bash
sudo apt-get update -y

sudo apt-get upgrade

#Install Docker

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker ubuntu

newgrp docker
```

```bash
git clone https://github.com/adarsh-gowda/Calorie_Count-GenAI-App.git
cd Calorie_Count-GenAI-App
```

```bash
docker build --no-cache -t adarshagowda/st1app:latest . 
```

```bash
docker images -a  
```

```bash
 echo $GOOGLE_API_KEY
```

```bash
nano ~/Calorie_Count-GenAI-App/.env
```
Inside the nano editor, add your environment variable like this:
```bash
GOOGLE_API_KEY=your_google_api_key_here
```
Then save and exit:
Press Ctrl + O, then Enter, then Ctrl + X.

```bash
docker run --env-file .env -d -p 8501:8501 adarshagowda/st1app:latest
```

```bash
docker ps  
```

```bash
docker stop container_id
```

```bash
docker rm $(docker ps -a -q)
```

```bash
docker login 
```

```bash
docker push adarshagowda/st1app:latest 
```

```bash
docker rmi adarshagowda/st1app:latest 
```

```bash
docker pull adarshagowda/st1app
```

```bash
docker pull adarshagowda/st1app
```

```bash
nano ~/Calorie_Count-GenAI-App/.env
```
Inside the nano editor, add your environment variable like this:
```bash
GOOGLE_API_KEY=your_google_api_key_here
```
Then save and exit:
Press Ctrl + O, then Enter, then Ctrl + X.