#  Dockerfiles for bio-informatics

## R
1. r1 : r_3_6_3 from Carl Boettiger
2. r2 : r_3_6_3 from Carl Boettiger
3. r3 : r_4_2_1 first customized

# Dockerhub 
## build
docker build -t r_4_2_1 .
## tag
docker tag docker tag r_4_2_1:latest lbecchi/r_4_2_1:latest
## publish
docker push lbecchi/r_4_2_1:latest
