FROM python:3.7-stretch

WORKDIR /home/roberthe/udacity/docker_exercises/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["gunicorn", "-b", ":8080", "main:APP"]