data "aws_iam_policy_document" "stepfunction_execution_role" {
 statement {
   actions = ["sts.AssumeRole"]
   principals {
      identification = ["states.amazonaws.com"]
      type           = Service
   }
 }
}


