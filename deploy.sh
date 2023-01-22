# CREATE

aws cloudformation create-stack --stack-name vpc --template-body file://./vpc.yaml

aws cloudformation create-stack --stack-name cognito --template-body file://./cognito.yaml --parameters \
ParameterKey=DomainName,ParameterValue=demo-apps.link \
ParameterKey=SubDomainName,ParameterValue=www \
ParameterKey=UserPoolDomainName,ParameterValue=authecsblogstmonti 

aws cloudformation create-stack --stack-name core-resources --template-body file://./core-resources.yaml --parameters \
ParameterKey=VPCId,ParameterValue=vpc-Vpc-Id \
ParameterKey=ALBSubnet1,ParameterValue=vpc-SubnetPublic1-Id \
ParameterKey=ALBSubnet2,ParameterValue=vpc-SubnetPublic2-Id \
ParameterKey=Route53HostedZone,ParameterValue=Z07969752CBLBTOH4R74U \
ParameterKey=DomainName,ParameterValue=demo-apps.link \
ParameterKey=SubDomainName,ParameterValue=www \
ParameterKey=ACMCertARN,ParameterValue=arn:aws:acm:eu-west-1:248581660709:certificate/5c00aec2-643e-4ddd-930a-a995d2c3f048

aws cloudformation create-stack --stack-name ecs --template-body file://./ecs.yaml --capabilities CAPABILITY_IAM --parameters \
ParameterKey=VPCId,ParameterValue=vpc-Vpc-Id \
ParameterKey=ECSSubnet1,ParameterValue=vpc-SubnetPrivate1-Id \
ParameterKey=ECSSubnet2,ParameterValue=vpc-SubnetPrivate2-Id \
ParameterKey=LoadBalancerSecurityGroup,ParameterValue=core-resources-LoadBalancerSecurityGroup \
ParameterKey=LoadBalancerName,ParameterValue=core-resources-LoadBalancerName \
ParameterKey=LoadBalancerListener,ParameterValue=core-resources-LoadBalancerListener \
ParameterKey=DomainName,ParameterValue=demo-apps.link \
ParameterKey=SubDomainName,ParameterValue=www \
ParameterKey=CognitoUserPoolArn,ParameterValue=cognito-CognitoUserPoolArn \
ParameterKey=UserPoolClientId,ParameterValue=cognito-CognitoClientID \
ParameterKey=UserPoolDomainName,ParameterValue=cognito-CognitoUserPoolDomainName \
ParameterKey=ECSClusterArn,ParameterValue=core-resources-ECSClusterArn

# UPDATE

aws cloudformation update-stack --stack-name vpc --template-body file://./vpc.yaml

aws cloudformation update-stack --stack-name cognito --template-body file://./cognito.yaml --parameters \
ParameterKey=DomainName,ParameterValue=demo-apps.link \
ParameterKey=SubDomainName,ParameterValue=www \
ParameterKey=UserPoolDomainName,ParameterValue=authecsblogstmonti 

aws cloudformation update-stack --stack-name core-resources --template-body file://./core-resources.yaml --parameters \
ParameterKey=VPCId,ParameterValue=vpc-Vpc-Id \
ParameterKey=ALBSubnet1,ParameterValue=vpc-SubnetPublic1-Id \
ParameterKey=ALBSubnet2,ParameterValue=vpc-SubnetPublic2-Id \
ParameterKey=Route53HostedZone,ParameterValue=Z07969752CBLBTOH4R74U \
ParameterKey=DomainName,ParameterValue=demo-apps.link \
ParameterKey=SubDomainName,ParameterValue=www \
ParameterKey=ACMCertARN,ParameterValue=arn:aws:acm:eu-west-1:248581660709:certificate/5c00aec2-643e-4ddd-930a-a995d2c3f048

aws cloudformation update-stack --stack-name ecs --template-body file://./ecs.yaml --capabilities CAPABILITY_IAM --parameters \
ParameterKey=VPCId,ParameterValue=vpc-Vpc-Id \
ParameterKey=ECSSubnet1,ParameterValue=vpc-SubnetPrivate1-Id \
ParameterKey=ECSSubnet2,ParameterValue=vpc-SubnetPrivate2-Id \
ParameterKey=LoadBalancerSecurityGroup,ParameterValue=core-resources-LoadBalancerSecurityGroup \
ParameterKey=LoadBalancerName,ParameterValue=core-resources-LoadBalancerName \
ParameterKey=LoadBalancerListener,ParameterValue=core-resources-LoadBalancerListener \
ParameterKey=DomainName,ParameterValue=demo-apps.link \
ParameterKey=SubDomainName,ParameterValue=www \
ParameterKey=CognitoUserPoolArn,ParameterValue=cognito-CognitoUserPoolArn \
ParameterKey=UserPoolClientId,ParameterValue=cognito-CognitoClientID \
ParameterKey=UserPoolDomainName,ParameterValue=cognito-CognitoUserPoolDomainName \
ParameterKey=ECSClusterArn,ParameterValue=core-resources-ECSClusterArn



# DELETE

aws cloudformation delete-stack --stack-name ecs 
aws cloudformation delete-stack --stack-name core-resources 
aws cloudformation delete-stack --stack-name cognito 
aws cloudformation delete-stack --stack-name vpc 


