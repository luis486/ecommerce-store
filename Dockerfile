FROM node:20-alpine
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm cache clean --force
RUN npm install cloudinary --force

EXPOSE 3001
CMD ["npm", "run" ,"dev"]
