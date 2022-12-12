# resource "aws_eip" "livisco" {
#   vpc = true
# }

# resource "aws_eip_association" "livisco" {
#   instance_id   = aws_instance.livisco.id
#   allocation_id = aws_eip.livisco.id
# }
# resource "aws_eip" "the_mirror" {
#   vpc = true
# }

# resource "aws_eip_association" "the_mirror" {
#   instance_id   = aws_instance.the_mirror.id
#   allocation_id = aws_eip.the_mirror.id
# }

resource "aws_eip" "enola" {
  vpc = true
}

resource "aws_eip_association" "enola" {
  instance_id   = aws_instance.enola.id
  allocation_id = aws_eip.enola.id
}
