# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami                    = var.ec2_ami_id
  instance_type          = var.ec2_instance_type
  count                  = var.ec2_instance_count
  tags = {
    "Name" = "myec2vm"
  }
}


## direct method

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-demo-instance"
  }
}
