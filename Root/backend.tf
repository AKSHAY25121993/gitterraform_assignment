terraform {
    backend "s3"{
        bucket = "akshaybucket1706"
        key = "Akshay.tfstate"
        region = "ap-northeast-1"
        dynamodb_table = "AkshayDemoTable"
        
    }
}