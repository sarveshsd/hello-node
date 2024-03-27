FROM node:19
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","main.js"]
