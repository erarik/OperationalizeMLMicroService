
rem # This tags and uploads an image to Docker Hub

rem # Step 1:
rem # This is your Docker ID/path
rem # dockerpath=<>
set dockerpath=erarik/project5:latest
set deployment=deployment/my-project5


rem # Step 2
rem # Run the Docker Hub container with kubernetes
kubectl run my-project5 --image=%dockerpath% --port 8000

rem # Step 3:
rem # List kubernetes pods
kubectl get pods

rem # Step 4:
rem # Forward the container port to a host
kubectl port-forward %deployment% 8000:80
