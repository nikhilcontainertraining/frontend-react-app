FROM node

WORKDIR /app

COPY package.json .

COPY package-lock.json .
#COPY /node_modules .

RUN npm install

COPY . .

#RUN npm install react-scripts

EXPOSE 3000

CMD ["npm", "start"]
