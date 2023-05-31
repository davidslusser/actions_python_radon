FROM python

COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip
RUN pip install radon

ENTRYPOINT ["/entrypoint.sh"]
