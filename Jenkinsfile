node{
     stage('Get Code'){ 
           git branch: 'main', credentialsId: '38c82d75-c6cf-4c70-bbe3-df7a1ba4a20d', url: 'https://github.com/naidukan/repository-jenkins.git'
 }
     stage('Build package'){
           def mavenHome = tool name:"MAVEN3", type:"maven"
           def mavenCMD = "${mavenHome}/bin/mvn"
           sh "${mavenCMD} clean package"
     }

      stage('Build package'){
           def mavenHome = tool name:"MAVEN3", type:"maven"
           def mavenCMD = "${mavenHome}/bin/mvn"
           sh "${mavenCMD} sonar:sonar"
     }

      stage ('nexus') {
      
      nexusArtifactUploader artifacts: [[artifactId: 'vproapp', classifier: '', file: 'target/vprofile-v2.war', type: 'war']], credentialsId: '6698ed7e-b188-4d3e-beab-e7387c40511d', groupId: 'v.in', nexusUrl: '18.117.147.210:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'vprofile/', version: '2.0'
      }
     
  
}
