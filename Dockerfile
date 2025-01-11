FROM rasa/rasa:latest

WORKDIR /app

# Copy your bot's files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Rasa
EXPOSE 5005

# Run the Rasa server
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--port", "5005"]

