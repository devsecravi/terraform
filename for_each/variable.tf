variable "instances"{

    type = map(string)
    default = {

         mongodb = "t3.micro"
         redis = "t3.micro"
         rabbitmq = "t3.micro"
         catalogue = "t3.small"
         payment = "t3.small"
    }
}