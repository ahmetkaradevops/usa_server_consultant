
# resource "aws_lambda_function" "to_start_instance_livisco" {
#   filename      = "${path.module}/python/start_instances_livisco.zip"
#   function_name = "lambda_function_to_start_instance_livisco"
#   role          = aws_iam_role.lambda_role.arn
#   handler       = "start_instances_livisco.lambda_handler"
#   runtime       = "python3.8"
#   depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
# }


# resource "aws_lambda_function" "to_stop_instance_livisco" {
#   filename      = "${path.module}/python/stop_instances_livisco.zip"
#   function_name = "lambda_function_to_stop_instance_livisco"
#   role          = aws_iam_role.lambda_role.arn
#   handler       = "stop_instances_livisco.lambda_handler"
#   runtime       = "python3.8"
#   depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
# }
# resource "aws_lambda_function" "to_start_instance_the_mirror" {
#   filename      = "${path.module}/python/start_instances_the_mirror.zip"
#   function_name = "lambda_function_to_start_instance_the_mirror"
#   role          = aws_iam_role.lambda_role.arn
#   handler       = "start_instances_the_mirror.lambda_handler"
#   runtime       = "python3.8"
#   depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
# }
resource "aws_lambda_function" "to_start_instance_enola" {
  filename      = "${path.module}/python/start_instances_enola.zip"
  function_name = "lambda_function_to_start_instance_enola"
  role          = aws_iam_role.lambda_role.arn
  handler       = "start_instances_enola.lambda_handler"
  runtime       = "python3.8"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}
# resource "aws_lambda_function" "to_stop_instance_the_mirror" {
#   filename      = "${path.module}/python/stop_instances_the_mirror.zip"
#   function_name = "lambda_function_to_stop_instance_the_mirror"
#   role          = aws_iam_role.lambda_role.arn
#   handler       = "stop_instances_the_mirror.lambda_handler"
#   runtime       = "python3.8"
#   depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
# }
resource "aws_lambda_function" "to_stop_instance_enola" {
  filename      = "${path.module}/python/stop_instances_enola.zip"
  function_name = "lambda_function_to_stop_instance_enola"
  role          = aws_iam_role.lambda_role.arn
  handler       = "stop_instances_enola.lambda_handler"
  runtime       = "python3.8"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}
# resource "aws_lambda_function_url" "to_start_instance_url_livisco" {
#   function_name      = aws_lambda_function.to_start_instance_livisco.function_name
#   authorization_type = "NONE"
# }

# resource "aws_lambda_function_url" "to_stop_instance_url_livisco" {
#   function_name      = aws_lambda_function.to_stop_instance_livisco.function_name
#   authorization_type = "NONE"
# }
# resource "aws_lambda_function_url" "to_stop_instance_url_the_mirror" {
#   function_name      = aws_lambda_function.to_stop_instance_the_mirror.function_name
#   authorization_type = "NONE"
# }
resource "aws_lambda_function_url" "to_stop_instance_url_enola" {
  function_name      = aws_lambda_function.to_stop_instance_enola.function_name
  authorization_type = "NONE"
}
# resource "aws_lambda_function_url" "to_start_instance_url_the_mirror" {
#   function_name      = aws_lambda_function.to_start_instance_the_mirror.function_name
#   authorization_type = "NONE"
# }
resource "aws_lambda_function_url" "to_start_instance_url_enola" {
  function_name      = aws_lambda_function.to_start_instance_enola.function_name
  authorization_type = "NONE"
}
