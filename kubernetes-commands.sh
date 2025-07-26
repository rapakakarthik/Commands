######################
to check name space 
-> kubectl get ns

to apply name space
-> kubectl apply -f namespace.yaml

to check created deployment swith name space 
-> kubectl get deployments -n localbagisto


To see detailed info about a specific deployment:
-> kubectl describe deployment localbagisto-deployment -n localbagisto 

to see detail info abput spefic service
-> kubectl describe svc localbagisto-service -n localbagisto




Kubernetes commands 

To show namespaces 
-> kubectl get ns

But before deletin the pods need to delete the deployment.yaml because we have defiened know in deployment.yaml as pods status so need to delete it first later next delete the pods 
To delete the deployments with namespace
-> kubectl get deployments -n localbagisto
-> kubectl delete deployments <deployment name > -n localbagisto

To delete the services with namespace 
-> kubectl get services -n localbagisto
-> kubectl delete service <servicenames> -n localbagisto

To show pods in particular namespace 
-> kubectl get pods -n localbagisto

To create Namespcace also need to write yaml file and need to apply that file 
-> kubectl apply -f namespace.yaml

Now we are working on localbagisto workspace (namespace) seperate isolated namespace or workspace 

----------
kubectl describe pod -n localbagisto <podname>

To chek the application logs command 
kubectl logs -n localbagisto deployment/bagisto

kubectl port-forward -n localbagisto service/bagisto 8084:80

---------------



