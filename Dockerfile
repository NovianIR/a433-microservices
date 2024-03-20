# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory untuk container 
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan aplikasi agar dapat berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos pada port  8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start
CMD ["npm", "start"]
