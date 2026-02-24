resource "aws_key_pair" "mo-key" {
  key_name   = "mo-key"
  public_key = var.pubkey
}
