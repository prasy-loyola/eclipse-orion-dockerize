# eclipse-orion-dockerize
Dockerize the eclipse Orion plugin

## Run Orion
You have to start this with a volume mount so that the files are persisted or else the files will die with the docker container when its stopped. You can create a Docker volume or mount a directory in the host machine using the below command.
        
    docker run --rm -v <volume_name/host_path>:/opt/eclipse/serverworkspace -d -p 8080:8080/tcp prasyloyola/dockerize-orion:<tag>

