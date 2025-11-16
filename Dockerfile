FROM python:3.11
WORKDIR/app
COPY . .
RUN pip ininstall -r 
requirements.txt
CMD ["python","organize.py"]