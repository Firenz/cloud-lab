FROM ubuntu:18.04

COPY . .

# Update container and install needed commands
RUN apt-get update
#RUN apt-get upgrade -y
#RUN apt-get dist-upgrade -y
RUN apt-get install -y sudo curl

# Install Node.js v10
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v

# Cleanup
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y

# Install project
RUN npm install

# Expose working port
EXPOSE 8888

CMD ["npm", "start"]
