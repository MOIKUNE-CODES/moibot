FROM node:lts

#Creates Working App
WORKDIR /usr/src/app
#copy's package.json file and installs deps
COPY package.json ./
RUN npm i -g npm yarn nodemon --quiet
RUN yarn
#bundles source
COPY . .
