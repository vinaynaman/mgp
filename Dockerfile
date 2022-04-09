FROM python:3.8.2-slim

COPY app.py .
COPY CountVectorizer.joblib .
COPY TFIDF_transformer.joblib .
COPY best_model.joblib .
COPY requirements.txt .
COPY bloody-mary-genres-big.jpg .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error