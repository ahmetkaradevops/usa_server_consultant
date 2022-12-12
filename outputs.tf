

# output "public_dns_livisco" {
#   description = "Public IPv4 DNS"
#   value       = try(aws_instance.livisco.public_dns)
# }
# output "public_dns_the_mirror" {
#   description = "Public IPv4 DNS"
#   value       = try(aws_instance.the_mirror.public_dns)
# }

output "public_dns_enola" {
  description = "Public IPv4 DNS"
  value       = try(aws_instance.enola.public_dns)
}
# output "start_url_livisco" {
#   description = "url for start to EC2 instance"
#   value       = aws_lambda_function_url.to_start_instance_url_livisco
# }
# output "stop_url_livisco" {
#   description = "url for stop to EC2 instance"
#   value       = aws_lambda_function_url.to_stop_instance_url_livisco
# }
# output "stop_url_the_mirror" {
#   description = "url for stop to EC2 instance"
#   value       = aws_lambda_function_url.to_stop_instance_url_the_mirror
# }
output "stop_url_enola" {
  description = "url for stop to EC2 instance"
  value       = aws_lambda_function_url.to_stop_instance_url_enola
}
output "start_url_enola" {
  description = "url for start to EC2 instance"
  value       = aws_lambda_function_url.to_start_instance_url_enola
}
# output "start_url_the_mirror" {
#   description = "url for start to EC2 instance"
#   value       = aws_lambda_function_url.to_start_instance_url_the_mirror
# }
