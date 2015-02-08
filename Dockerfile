FROM	ubuntu:14.04

# make sure apt is up to date
RUN		apt-get update

# Install Node.js and npm
RUN     apt-get install -y nodejs npm git git-core

# Bundle app source
COPY . /helloworld

# Install app dependencies
RUN cd /helloworld; npm install

EXPOSE  3000

# NOTE : in below command `nodejs` has to be used instead of `node`
# may be because node.js was installed from package manager
CMD ["nodejs", "/helloworld/app.js"]