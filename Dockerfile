FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY server.py models-cache.json benefit.py ./
ENV CODEARTS_PROXY_HOST=0.0.0.0 \
    CODEARTS_PROXY_PORT=8787
EXPOSE 8787
CMD ["python", "server.py"]
