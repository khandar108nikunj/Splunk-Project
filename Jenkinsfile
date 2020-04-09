node {
 
     stage('master') {
            checkout scm
    }
    
     stage('Provision infrastructure') {
 
                 sh 'terraform -v'
                 sh 'terraform init'
                 sh 'terraform plan -out=plan'
                // sh 'terraform destroy -auto-approve'
                 sh 'terraform apply plan'

     }
}
