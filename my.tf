resource "local_file" "foo" {
  filename = local.name
  content = local.content 
}

locals {
  name= "test.html"
  content = "kamboj"
}

#to create random id
resource "local_file" "myfile1" {
  filename = local.myname
  content = "${random_id.con.hex}"
}

locals {
  myname= "my.txt"
  mycontent = "my name is mayank"
}

resource "random_id" "con" {
  byte_length = 2
}

#to create variable by using number
resource "local_file" "myfile2" {
  filename = "number.txt"
  content = var.kamboj
}

#to create variable by using string
resource "local_file" "myfile3" {
  filename = "string.txt"
  content = var.kamboj2
}

#to create variable by using list
resource "local_file" "myfile4" {
  filename = "list.txt"
  content = var.kamboj3[2]
}

#to create variable by using map
resource "local_file" "myfile5" {
  filename = "map.txt"
  content = var.kamboj4["vol2"]
}

#to create variable by using object
resource "local_file" "myfile6" {
  filename = "object.txt"
  content = var.kamboj5["content"]
}

# Passing the content by terraform.tfvars
resource "local_file" "myfile7" {
  filename = var.mayank
  content = var.cont
}

#output block
resource "local_file" "myfile8" {
  filename = var.mayank
  content = var.cont
}

output "output_name" {
  value = local_file.myfile5.content
}