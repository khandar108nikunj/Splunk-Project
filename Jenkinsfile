String credentialsId = 'awsCreds'

node {
 
     stage('master') {
            checkout scm
    }
    
     stage('Terraform-Spin') {
 node {      
  withCredentials([[
        $class: 'AmazonWebServicesCredentialsBinding',
        credentialsId: credentialsId,
        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
      ]])
 
                 sh 'terraform -v'
                 sh 'terraform init'
                 sh 'terraform plan -out=plan'
                // sh 'terraform destroy -auto-approve'
                 sh 'terraform apply plan'

     }
}
