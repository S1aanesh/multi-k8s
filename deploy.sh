docker build -t s1aanesh/multi-client:latest -t s1aanesh/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t s1aanesh/multi-server:latest -t s1aanesh/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t s1aanesh/multi-worker:latest -t s1aanesh/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push s1aanesh/multi-client:latest
docker push s1aanesh/multi-server:latest
docker push s1aanesh/multi-worker:latest

docker push s1aanesh/multi-client:$SHA
docker push s1aanesh/multi-server:$SHA
docker push s1aanesh/multi-worker:$SHA