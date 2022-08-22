*list of Docker files

**R
[R1]


cd R...

docker build -t r_4_2_1 .
docker tag docker tag r_4_2_1:latest lbecchi/r_4_2_1:latest
docker push lbecchi/r_4_2_1:latest
