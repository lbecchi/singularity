#  Dockerfiles for bio-informatics

## R
1. r1 : R version 3.6.3 from Carl Boettiger
2. r2 : R version 3.6.3 from Carl Boettiger
3. r3 : R version 4.2.1 first customized (still not compiling)

## Python
1. ...

# Dockerhub 
## login (if not already)
docker login
## enter folder
cd r3
## build
docker build -t r_4_2_1 .
## tag
docker tag docker tag r_4_2_1:latest lbecchi/r_4_2_1:latest
## publish
docker push lbecchi/r_4_2_1:latest
