### IAM Role and Policy ###
# Allows Lambda function to describe, stop and start EC2 instances

resource "aws_iam_role" "lambda_role" {
  name               = "Lambda_Function_Role_livisco"
  assume_role_policy = "${data.template_file.lambda_policy.rendered}"
}

data "template_file" "lambda_policy" {
  template = "${file("${path.module}/policies/lambda.json")}"
}

resource "aws_iam_policy" "iam_policy_for_lambda" {
  name        = "aws_iam_policy_for_lambda_role_livisco"
  path        = "/"
  description = "AWS IAM Policy for managing aws lambda role"
  policy      = "${data.template_file.lambda_role_policy.rendered}"
}

data "template_file" "lambda_role_policy" {
  template = "${file("${path.module}/policies/lambda_role.json")}"
}

resource "aws_iam_role_policy_attachment" "attach_iam_policy_to_iam_role" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.iam_policy_for_lambda.arn
}
# data "archive_file" "zip_the_python_code_start_livisco" {
#   type        = "zip"
#   source_dir  = "${path.module}/python/"
#   output_path = "${path.module}/python/start_instances_livisco.zip"
# }
# data "archive_file" "zip_the_python_code_stop_livisco" {
#   type        = "zip"
#   source_dir  = "${path.module}/python/"
#   output_path = "${path.module}/python/stop_instances_livisco.zip"
# }
# data "archive_file" "zip_the_python_code_start_the_mirror" {
#   type        = "zip"
#   source_dir  = "${path.module}/python/"
#   output_path = "${path.module}/python/start_instances_the_mirror.zip"
# }
# data "archive_file" "zip_the_python_code_stop_the_mirror" {
#   type        = "zip"
#   source_dir  = "${path.module}/python/"
#   output_path = "${path.module}/python/stop_instances_the_mirror.zip"
# }
data "archive_file" "zip_the_python_code_start_enola" {
  type        = "zip"
  source_dir  = "${path.module}/python/"
  output_path = "${path.module}/python/start_instances_enola.zip"
}
data "archive_file" "zip_the_python_code_stop_enola" {
  type        = "zip"
  source_dir  = "${path.module}/python/"
  output_path = "${path.module}/python/stop_instances_enola.zip"
}
