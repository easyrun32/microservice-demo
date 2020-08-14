# Microservices Demo

Uses the following technologies:

- Docker (and Docker Compose)
- React
- Node.js
- MySQL
- Sequelize
- Aws
- Terraform (code infrastructure)

## Setup

```sh
# in main directory
docker-compose up

# in a separate terminal, inside classifieds-app
yarn
yarn watch
```

## Deploy

1. To deploy create an aws account
2. Go to Iam -> user -> add-user -> give it adminstration permission
3. you should be provided with a AWS_ACCESS_KEY_ID, AWS_ACCESS_SECRET_KEY Copy Paste

4. within listing service, api-gateway , user-service copy aws_access_key_id and aws_access_secret_key and paste it within the variables of the .env for all those directories and remove the .example within the files name otherwise u'd get an error

5. within terraform create a .key file and a .pem file

6. also within terraform terraform.example.tfvars copy paste aws key and secret key and rename the file to terraform.tfvars

7. within the terraform directory do terraform init then terraform apply

8. within listing service, api-gateway , user-service do yarn deploy

9. To check the deployment status of each service go to code-deploy in aws should be a search bar for u to type code-deploy then go to deployment and see if the deployment turned out successful

10. if everything is good then go to classified app which is the react app and copy paste the ip address of api-gateway within the .env file
    ( NOTE to find ip: inside ec2 within aws click the vm and should give u details)

11. finally do yarn build and go to aws bucket create a bucket and drag and drop everything within the build directory into the bucket

12. whew i hope everything worked for you
