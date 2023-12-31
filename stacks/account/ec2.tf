###################################################
# Account-level Spot Data Feed Subscription for EC2
###################################################

# INFO: Need permission to S3 ACL
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html#using-spot-instances-dfs3
resource "aws_spot_datafeed_subscription" "this" {
  count = var.ec2_spot_datafeed_subscription.enabled ? 1 : 0

  bucket = var.ec2_spot_datafeed_subscription.s3_bucket.name
  prefix = var.ec2_spot_datafeed_subscription.s3_bucket.key_prefix
}
