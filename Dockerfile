FROM python:3.8.2-slim

COPY requirements.txt .
COPY app.py .
COPY CountVectorizer.joblib .
COPY bloody-mary-genres-big.jpg .
COPY katonic-1.0-py3-none-any.whl .

RUN katonic-1.0-py3-none-any.whl .
RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error