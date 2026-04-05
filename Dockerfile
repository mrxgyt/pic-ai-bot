FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot/ bot/
COPY core/ core/

RUN mkdir -p data/service_accounts

CMD ["python", "-m", "bot.main"]
