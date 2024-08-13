# Sử dụng Node.js phiên bản 18 với Alpine Linux làm base image
FROM node:18-alpine

WORKDIR /app

# Sao chép tệp package.json và package-lock.json (nếu có) vào thư mục làm việc
COPY package*.json ./
COPY .env* ./
COPY key.json ./

# Sao chép tất cả các tệp trong thư mục src vào thư mục làm việc
COPY src ./src
COPY main.js ./

RUN npm install
EXPOSE 5001

CMD ["npm", "run", "deploy"]