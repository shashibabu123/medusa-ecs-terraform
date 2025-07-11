FROM node:18

# Install OS-level dependencies
RUN apt-get update && apt-get install -y \
  python3 \
  make \
  g++ \
  libpq-dev \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy everything into container
COPY . .

# Install dependencies
RUN npm install

# Expose Medusa default port
EXPOSE 9000

# Run the app
CMD ["medusa", "start"]

