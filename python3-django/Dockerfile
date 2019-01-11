FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN django-admin startproject myproj
RUN python myproj/manage.py migrate
RUN echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'password')" | python myproj/manage.py shell
RUN sed -i 's/ALLOWED_HOSTS \= \[\]/ALLOWED_HOSTS \= \[ "localhost" \]/g' myproj/myproj/settings.py

EXPOSE 8000

# ENTRYPOINT [ "python", "myproj/manage.py", "runserver", "0.0.0.0:8000"]
ENTRYPOINT [ "ls", "-lh"]

# CMD [ "python", "myproj/manage.py", "runserver", "0.0.0.0:8000"]
