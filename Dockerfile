FROM node:18

WORKDIR /app

# Install Medusa CLI globally
RUN npm install -g medusa-cli

# Copy your project files
COPY . .

# Install dependencies
RUN npm install

EXPOSE 9000

# Start Medusa in production mode
CMD ["medusa", "start"]

