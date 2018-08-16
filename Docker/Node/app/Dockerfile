# Base image, custom made not found on dockerhub
FROM puppeteer:app

WORKDIR /usr/src/app

# Copy only package.json AND package-lock.json
COPY package*.json ./

VOLUME "/usr/src/app/logs"

RUN npm install --only=production

# Bundle app source
COPY . .

# App running with non root user, as it should be
RUN chown node:node -R /usr/src/app

ENV NODE_ENV="production"
ENV IS_DOCKER="true"
ENV ELASTIC_SERVER="http://elastic:9200"

EXPOSE 3009 8081

CMD [ "npm", "run", "start" ]

