# IAM 사용자 예제

이번 실습은 [Terraform](https://www.terraform.io/)을 통해 [IAM](https://aws.amazon.com/iam/) 사용자를 생성하는 실습 입니다.

자세한 내용은 *[테라폼 설치에서 운영까지](http://www.terraformupandrunning.com)* 서적의 "제5장, 테라폼 팁과 요령: 반복문, 조건문, 배포 및 주의사항"를 참고 하십시오.

## 사전 준비 사항

* [Terraform](https://www.terraform.io/)이 설치 되어 있어야 합니다. 
* [Amazon Web Services (AWS) account](http://aws.amazon.com/) 계정을 보유 하고 있어야 합니다.

## 시작 하기

**이 실습은 실제 AWS 리소스를 생성합니다. 대부분 [AWS Free Tier](https://aws.amazon.com/free/)로 지원되는 범위안에서 자원을 생성하고 활용하나 사용자의 조건에 따라서 비용이 일부 발생 할 수도 있습니다. 비용 발생에 대한 부분에 대해서는 실습 제공자가 책임지지 않으며 비용에 주의하여 실습을 진행하십시오. [비용 알람](http://bit.ly/2Nryf1C)을 설정해놓는 것을 권장합니다.** 

[AWS 엑세스 키](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) 
를 환경 변수로 설정:

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

`vars.tf`파일에 `default` 매개변수 설정을 통해 IAM 사용자 "neo"를 CloudWatch의 전체 권한 혹은 읽기 전용 권한을 부여:

```hcl
variable "give_neo_cloudwatch_full_access" {
  description = "If true, neo gets full access to CloudWatch"
  # Set this parameter to true or false!
  # default = true
}
```

환경 구성 검토:

```
terraform plan
```

환경 구성(코드 배포):

```
terraform apply
```

환경 정리:

```
terraform destroy
```