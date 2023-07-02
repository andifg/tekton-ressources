buildah bud --storage-driver=overlay --format=oci --tls-verify=true --no-cache -f ./Containerfile -t test .


 buildah --storage-driver=vfs bud --format=oci --tls-verify=true --no-cache -f ./Dockerfile -t image-registry.openshift-image-registry.svc:5000/pipelines-tutorial/pipelines-vote-api .

buildah --storage-driver=vfs push --tls-verify=true --digestfile /tmp/image-digest git remote add origin git@github.com:andifg/openshift-pipelines-application.git  docker://image-registry.openshift-image-registry.svc:5000/pipelines-tutorial/pipelines-vote-api



cd /app/test

vi Containerfile 


FROM alpine:latest
ENTRYPOINT ["sh","-c", "echo Helli World!;sleep 3600"]



