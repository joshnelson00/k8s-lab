data "aws_ami" "amazon" {
  filter {
    name   = "image-id"
    values = ["ami-0bd3fbcdc633a1b1a"]
  }
}

resource "aws_instance" "k8s-node" {
  count         = 2
  ami           = data.aws_ami.amazon.id
  instance_type = "t3.micro"

  subnet_id              = var.network.subnet_id
  vpc_security_group_ids = [var.security.security_group_id]

  tags = {
    Name = "instance-${count.index}"
  }
}
