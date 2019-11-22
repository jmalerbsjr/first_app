FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY first_app.py /src/first_app.py

EXPOSE  8000
CMD ["python", "/src/first_app.py", "-p 8000"]


#build -t first_app
#docker run -p 8000:8000 -it first_app