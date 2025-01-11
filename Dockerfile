# Use the official Rasa image as the base
FROM rasa/rasa:latest

# Set the working directory
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Install dependencies (if you have custom ones)
RUN pip install -r requirements.txt

# Expose the Rasa default port
EXPOSE 5005

# Run the Rasa server
CMD ["rasa", "run", "--enable-api", "--cors", "*"]
