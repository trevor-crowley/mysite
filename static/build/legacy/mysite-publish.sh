git pull
jekyll.ruby2.5 b
docker build -t tcrow.io/mysite .
docker tag tcrow.io/mysite tcrow.io:5000/mysite:latest
docker push tcrow.io:5000/mysite:latest
