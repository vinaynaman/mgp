FROM python:3.9.7-slim

COPY app.py .
COPY CountVectorizer.joblib .
COPY naive_bayes_model_20220405-082618.pkl .
COPY bloody-mary-genres-big.jpg .
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error