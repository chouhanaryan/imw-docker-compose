FROM python:3.6

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir -p /home/app

ENV HOME=/home/app
ENV APP_HOME=/home/app/web
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN python -m pip install --upgrade pip

COPY ./requirements.txt $APP_HOME

RUN pip install -r requirements.txt

COPY ./entrypoint.sh $APP_HOME

COPY . $APP_HOME

ENTRYPOINT ["/home/app/web/entrypoint.sh"]