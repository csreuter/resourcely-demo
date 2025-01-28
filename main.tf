# main.tf

resource "null_resource" "foo" {
  triggers = {
    foo = var.project
  }
}

# Key Pair
resource "aws_key_pair" "example-ec2_fb72ZRg3McH8nQuC_key" {
  key_name   = "example-ec2-keypair"
  public_key = "ssh-rsa123523890p32"
}

# EC2 Instance
resource "aws_instance" "example-ec2_fb72ZRg3McH8nQuC" {
  ami           = "ami-1234567890abcdef0"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.example-ec2_fb72ZRg3McH8nQuC_key.id
}
