data "aws_iam_policy_document" "assure_role" {
  statement {
    effect = "Allow"

    principals {
      type = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "lambda_role" {
  name = "${var.name}"
  assume_role_policy = data.aws_iam_policy_document.assure_role
}

resource "aws_iam_policy" "lambda_policy" {
  name = "${var.name}-policy"
  policy = var.role_policy
}

resource "aws_iam_role_policy_attachment" "lambda_policy_attachment" {
  role = aws_iam_role.lambda_role
  policy_arn = aws_iam_policy.given_policy.arn
}


