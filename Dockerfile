# Use Python 3.11 or later as a base image
FROM python:3.11
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN pip3 install -r requirements.txt
# Set YOUR_NAME environment variable
ENV YOUR_NAME=michaeloren7
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python3", "lbg.py"]
