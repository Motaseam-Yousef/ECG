# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy only the necessary files
COPY requirements.txt .
COPY Ecg.py .
COPY final_app.py .
COPY "Heart_Disease_Prediction_using_ECG (4).pkl" .
COPY "PCA_ECG (1).pkl" .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run streamlit when the container launches
CMD ["streamlit", "run", "final_app.py"]