node ('master')
 {
  
  def mavenHome = tool name: "maven3.6.0"
  
  stage("CheckOut Repository")
  {
   git branch: 'master', credentialsId: '65fb834f-a83b-4fe7-8e11-686245c47a65', url: 'https://github.com/ShekarSoma4933/simple-web-application.git'
  }
  /*
  stage("Execute SonarQube Report")
  {
  sh "${mavenHome}/bin/mvn sonar:sonar"
  }
  */
  
  stage("Build Artifact")
  {
   sh "${mavenHome}/bin/mvn clean package"
  }
  
  /*
  stage("Upload Artifacts into Nexus Repository")
  {
  sh "${mavenHome}/bin/mvn deploy"
  }
  }*/
 /*
  stage('Build Docker Image'){
        sh 'docker build -t shekarsoma4933/simple-web-app .'
    }
    
    stage('Push Docker Image'){
        withCredentials([string(credentialsId: 'DOKCER_HUB_PASSWORD', variable: 'DOKCER_HUB_PASSWORD')]) {
          sh "docker login -u shekarsoma4933 -p ${DOKCER_HUB_PASSWORD}"
        }
        sh 'docker push shekarsoma4933/simple-web-app'
     }
   */
  /*
  stage("Deploy To Kuberates Cluster")
  {
       kubernetesDeploy(
         configs: 'simplewebapp.yml', 
         kubeconfigId: 'KUBERNATES_CONFIG',
         enableConfigSubstitution: true
        )
  }
     
 stage('Email Notification')
 {
 mail bcc: 'xxxx@gmail.com', body: '''Build is over

 Thanks,
 Shekar Soma,
 ''', cc: 'xxxx@gmail.com', from: '', replyTo: '', subject: 'Build is over!!', to: 'xxxx@gmail.com'
 }
 */
  
  
 }
