# resource "aws_instance" "livisco" {
#   ami             = var.ami_usa
#   instance_type   = var.instance_type1
#   key_name        = aws_key_pair.key_pair.key_name
#   security_groups = [aws_security_group.rdp.name]
#   disable_api_termination = true
#   tags = {
#     "Name" = "Livisco"
#   }
# }

# Generates a secure private key and encodes it as PEM
resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
# Create the Key Pair
resource "aws_key_pair" "key_pair" {
  key_name   = "horadart"  
  public_key = tls_private_key.key_pair.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.key_pair.key_name}.pem"
  content  = tls_private_key.key_pair.private_key_pem
}
# resource "aws_instance" "the_mirror" {
#   ami             = var.ami_usa
#   instance_type   = var.instance_type1
#   key_name        = aws_key_pair.key_pair.key_name
#   security_groups = [aws_security_group.rdp.name]
#   disable_api_termination = true
#   tags = {
#     "Name" = "The Mirror"
#   }
# }

resource "aws_instance" "enola" {
  ami             = var.ami_usa
  instance_type   = var.instance_type1
  key_name        = aws_key_pair.key_pair.key_name
  security_groups = [aws_security_group.rdp.name]
  disable_api_termination = true
  tags = {
    "Name" = "Dallas"
  }
}





