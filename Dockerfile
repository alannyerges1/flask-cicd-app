#Official Python image
FROM python:3.12-slim

#Working directory 
WORKDIR /app

# Copy files
COPY app/ /app/

# Install  dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose flask  port 
EXPOSE 5000

#Run the damn app 
CMD ["python", "app.py"]