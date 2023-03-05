data "aws_iam_policy_document" "stepfunction_execution_role" {
 statement {
   actions = ["sts.AssumeRole"]
   effect = "Allow"
   principals {
      identification = ["states.amazonaws.com"]
      type           = Service
   }
 }
}

data "aws_iam_policy_document" "stepfunction_execution_policy" {
 stetement {
  effect = "Allow"
  actions = [
          "states:List*",
          "states:Describe*",
          "states:Get*",
          "states:StartExecution",
          "states:StopExecution"
        ]
  resource = "*"
 }
  
 stetement {
  effect = "Allow"
  actions = ["lambda:InvokeFunction"]
  resource = "*" 
 }
 }
   
