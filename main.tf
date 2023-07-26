#--------------------Provider Info------------------------------------
provider "aws" {
  region                   = "ap-south-1"
}
#-------------------PasswordlessSSH----------------------------------------------
resource "null_resource" "key" {
  provisioner "local-exec" {
    on_failure  = fail
    command = "sudo cp /var/tmp/Demo_ans_key.pem /home/ubuntu/.ssh/Demo_ans_key.pem"
  }
  provisioner "local-exec" {
    on_failure  = fail
    command = "sudo chown ubuntu:ubuntu /home/ubuntu/.ssh/Demo_ans_key.pem"
  }
}
