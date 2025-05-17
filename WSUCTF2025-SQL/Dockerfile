FROM node:18
WORKDIR /app
COPY . .
RUN npm install
COPY init.sql /app/init.sql
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["/entrypoint.sh"]
CMD ["node", "src/app.js"]

