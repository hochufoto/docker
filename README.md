My docker compose template

Install Docker

Uninstall old versions:

    sudo apt-get remove docker docker-engine docker.io containerd runc

Add docker repository:

    sudo apt-get update
    sudo apt-get install -y ca-certificates curl gnupg

    sudo mkdir -m 0755 -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

    echo \
      "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Install Docker and Docker compose:

    sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Create network

    sudo docker network create backend
    sudo docker network create frontned

Use docker without sudo:

    sudo usermod -aG docker $USER
