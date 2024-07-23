FROM python:3.8

ENV APP_HOME /app
ENV PYTHONUNBUFFERED 1

ENV HUGGINGFACE_TOKEN=""
ENV HUGGINGFACE_REPO=""

WORKDIR $APP_HOME

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
