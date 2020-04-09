node {
 
     stage('master') {
            checkout scm
        
            /* steps {
                git branch: 'master', url: 'https://gitlab.com/16it148/test/-/blob/master/instance-spin.tf'
 
            } */
        }
     stage('Set Terraform path') {
  //          steps {
                // script {
                //    def tfHome = tool name: 'Terraform'
                //    env.PATH = "${tfHome}:${env.PATH}"
                // }
                // sh 'chmod +x $(which terraform)'
                 sh 'terraform -v'

            //}
     }
 
  /*   stage('Provision infrastructure') {
 
            //steps {

                 sh 'terraform init'
                 sh 'terraform plan -out=plan'
                // sh 'terraform destroy -auto-approve'
                 sh 'terraform apply plan'

            //}
     }
  */
       stage('YML file') {
            
            sh 'ansible --version'
        //    sh 'ansible all -m ping -i hosts'
            sh 'ansible-playbook splunk_installation.yml  '
            
     }
}