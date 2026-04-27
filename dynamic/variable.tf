variable "ingress_rules" {

      default = [
          {
             port = 22
             cidr_blocks = ["0.0.0.0/0"]
             description = "allowd form 22 port"
          },
          {
             port = 3303
             cidr_blocks = ["0.0.0.0/0"]
             description = "allowd form 3303 port"
          },
          {
             port = 443
             cidr_blocks = ["0.0.0.0/0"]
             description = "allowd form 443 port"
          }
      ]
}