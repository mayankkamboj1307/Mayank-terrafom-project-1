#number

variable "kamboj" {
  type = number
  description = "To creat a local file"
  default = 09876
}

#string

variable "kamboj2" {
  type = string
  description = "To creat a local file"
  default = "myfiles.txt"
}

#list

variable "kamboj3" {
  type = list(any)
  description = "To creat a local file"
  default = [1,2,"abc"]
}

#map

variable "kamboj4" {
  type = map(any)
  description = "To creat a local file"
  default = {
    vol1 = "mayank",
    vol2 = "kamboj",
    vol3 = "Dabra"
  }
}

#object

variable "kamboj5" {
  type = object({
    filename = string
    content = string
  })
  description = "To creat a local file"
  default = {
    content = 2000
    filename = "ABC"
  }
}

#by passing the value of tf.vars
variable "mayank" {
  type = string
  default = "output.txt"
}

variable "cont" {
  type = string
  default = "Hii Guys! wlecome to my program"
}