git pull
docker login
VERSION=0.9.6

## r-bionic
# docker build -t $USER/r-bionic:latest ./r-bionic
## docker build --no-cache -t $USER/r-bionic:latest ./r-bionic
# docker tag $USER/r-bionic:latest $USER/r-bionic:${VERSION}
# docker push $USER/r-bionic:${VERSION}; docker push $USER/r-bionic:latest

## radiant
# docker build -t $USER/radiant:latest ./radiant
## docker build --no-cache -t $USER/radiant ./radiant
# docker tag $USER/radiant:latest $USER/radiant:${VERSION}
# docker push $USER/radiant:${VERSION}; docker push $USER/radiant:latest

## rsm-msba
docker build -t $USER/rsm-msba:latest ./rsm-msba
## docker build --no-cache -t $USER/rsm-msba ./rsm-msba
# docker tag $USER/rsm-msba:latest $USER/rsm-msba:${VERSION}
# docker push $USER/rsm-msba:${VERSION}; docker push $USER/rsm-msba:latest

## rsm-msba-spark
docker build -t $USER/rsm-msba-spark:latest ./rsm-msba-spark
## docker build --no-cache -t $USER/rsm-msba-spark ./rsm-msba-spark
# docker tag $USER/rsm-msba-spark:latest $USER/rsm-msba-spark:${VERSION}
# docker push $USER/rsm-msba-spark:${VERSION}; docker push $USER/rsm-msba-spark:latest

