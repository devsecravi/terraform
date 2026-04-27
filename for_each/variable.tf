  #  variable "instances"{

  #      type = map(string)
   #     default = {
#
  #          mongodb = "t3.micro"
  #          redis = "t3.micro"
  #          rabbitmq = "t3.micro"
  #          catalogue = "t3.small"
   #         payment = "t3.small"
   #     }
   # }
variable "instances"{

      type = list(string)
      default =["mongodb","redis"]
}

variable "zone_id" {

    type = string
    default = "Z05454352LP47ZQWSG7WJ"
}

variable "domian_name" {

    type = string
    default = "dsecops88.online"
}
