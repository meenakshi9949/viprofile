node{
     stage('Get Code'){ 
           git branch: 'main', credentialsId: '38c82d75-c6cf-4c70-bbe3-df7a1ba4a20d', url: 'https://github.com/naidukan/repository-jenkins.git'
 }
     stage('Build package'){
           def mavenHome = tool name:"MAVEN3", type:"maven"
           def mavenCMD = "${mavenHome}/bin/mvn"
           sh "${mavenCMD} clean package"
     }

  
}
