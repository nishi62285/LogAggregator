FROM python:3.6-alpine
WORKDIR /LogAggregator
COPY requirments.txt requirments.txt
RUN pip install -r requirments.txt
COPY log_aggregator.py log_aggregator.py
ENV mongo_addr
CMD ["python","upstream_listener.py"]