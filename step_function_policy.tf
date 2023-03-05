resource "aws_iam_role" "stepfunction_exectuion_role" {
 name  = "step-function-execution-role"
 assume_role_policy = data.aws_iam_policy_document.stepfunction_execution_role.json
}

resource "aws_iam_policy" "stepfunction_exectuion_policy" {
 name  = "step-function-execution-policy"
 policy = data.aws_iam_policy_document.stepfunction_execution_policy.json
}

resource "aws_iam_role_policy_attachment" "stepfunction_custom_attachment" {
 policy_arn = aws_iam_policy.stepfunction_exectuion_policy.arn
 role = aws_iam_role.stepfunction_exectuion_role.name
}
