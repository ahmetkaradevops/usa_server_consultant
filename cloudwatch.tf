# resource "aws_cloudwatch_metric_alarm" "low_cpu_usage_livisco" {
#   alarm_name          = "livisco Idle Server Alarm"
#   comparison_operator = "LessThanThreshold"
#   evaluation_periods  = 1
#   metric_name         = "CPUUtilization"
#   namespace           = "AWS/EC2"
#   statistic           = "Maximum"
#   period              = 1800 # The period in seconds over which the specified statistic is applied.
#   threshold           = 6
#   treat_missing_data  = "missing"
#   alarm_actions       = [
#     # "${aws_sns_topic.sns_my_lambda_restart_topic.arn}",
#     "arn:aws:automate:us-east-1:ec2:stop"]
#   # depends_on          = [aws_sns_topic.sns_my_lambda_restart_topic]
#   alarm_description   = "This metric monitors EC2 cpu utilization and stops the instance when requirements met."
#   dimensions          = {
#     InstanceId = aws_instance.livisco.id
#   }
# }
# resource "aws_cloudwatch_metric_alarm" "low_cpu_usage_the_mirror" {
#   alarm_name          = "The Mirror Idle Server Alarm"
#   comparison_operator = "LessThanThreshold"
#   evaluation_periods  = 1
#   metric_name         = "CPUUtilization"
#   namespace           = "AWS/EC2"
#   statistic           = "Maximum"
#   period              = 1800 # The period in seconds over which the specified statistic is applied.
#   threshold           = 6
#   treat_missing_data  = "missing"
#   alarm_actions       = [
#     # "${aws_sns_topic.sns_my_lambda_restart_topic.arn}",
#     "arn:aws:automate:us-east-1:ec2:stop"]
#   # depends_on          = [aws_sns_topic.sns_my_lambda_restart_topic]
#   alarm_description   = "This metric monitors EC2 cpu utilization and stops the instance when requirements met."
#   dimensions          = {
#     InstanceId = aws_instance.the_mirror.id
#   }
# }
resource "aws_cloudwatch_metric_alarm" "low_cpu_usage_enola" {
  alarm_name          = "Enola Idle Server Alarm"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  statistic           = "Maximum"
  period              = 1800 # The period in seconds over which the specified statistic is applied.
  threshold           = 6
  treat_missing_data  = "missing"
  alarm_actions       = [
    # "${aws_sns_topic.sns_my_lambda_restart_topic.arn}",
    "arn:aws:automate:us-east-1:ec2:stop"]
  # depends_on          = [aws_sns_topic.sns_my_lambda_restart_topic]
  alarm_description   = "This metric monitors EC2 cpu utilization and stops the instance when requirements met."
  dimensions          = {
    InstanceId = aws_instance.enola.id
  }
}
