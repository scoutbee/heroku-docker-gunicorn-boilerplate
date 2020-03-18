FROM node:13.8.0-alpine as client-builder

COPY frontend/package.json frontend/yarn.lock /

RUN yarn install --frozen-lockfile --no-cache --production=false

COPY frontend /

RUN yarn run build

FROM python:3.8.2-alpine

WORKDIR /backend

RUN apk update && apk add postgresql-dev gcc musl-dev

COPY backend/requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY ./backend /backend

RUN mkdir /frontend

COPY --from=client-builder /build /frontend/build

RUN DATABASE_URL='' python manage.py collectstatic --noinput

CMD gunicorn wueww.wsgi --log-file -