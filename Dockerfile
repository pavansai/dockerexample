FROM node:18
WORKDIR /app
COPY package.json ./    
COPY package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
# docker build -t my-node-app .
# docker run -p 3000:3000 my-node-app


