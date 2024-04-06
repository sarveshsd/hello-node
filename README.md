
# Deployment hello-node app

- Created deployment file for the app and to run this command u should run the below command:

      kubectl apply -f deployment.yaml
 

- After that we have create HPA for the pods

      kubectl apply -f HPA.yaml

- Now if we want to check our hpa is working fine or not first we would like to run the deployment or we can create service file for our deployment to run  but here I have port-forwarded the deployment file through this 

      kubectl port-forward --address 0.0.0.0 deployment/hello-node 3000:3000

- Now we will need to send traffice to our deployment to check if the load increases it should create a new pod

      ab -n 200000 -c 300 http://127.0.0.1:3000/

- Here is the POV link:
     
      https://drive.google.com/file/d/1X4BbmiyKU5zRhIIxZA522TnnUz9A9IjC/view?usp=sharing
