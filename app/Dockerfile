FROM python:3.10-alpine
RUN mkdir /opt/app
WORKDIR /opt/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
COPY . .
ENV FLASK_APP=api.py
ENV FLASK_RUN_HOST=0.0.0.0
CMD [ "flask", "run" ]