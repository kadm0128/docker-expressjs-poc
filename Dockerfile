FROM node
RUN mkdir /home/app
WORKDIR /home/app
COPY package.json /home/app/
COPY package-lock.json /home/app/
RUN npm install
COPY ./ /home/app/
EXPOSE 3000
CMD ["node", "/home/app/server.js"]