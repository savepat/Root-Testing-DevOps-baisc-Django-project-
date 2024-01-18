# Stage 1: Build
FROM python:3.8 AS build
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Production
FROM python:3.8-slim
WORKDIR /app
COPY --from=build /app /app
COPY . .
EXPOSE 80
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
