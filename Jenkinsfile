node {
  stage 'build'
  openshiftBuild(buildConfig: 'nodejs-mongo-persistent', showBuildLogs: 'true')
  stage 'deploy'
  openshiftDeploy(deploymentConfig: 'nodejs-mongo-persistent')
}
