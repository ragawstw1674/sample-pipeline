resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids

  metadata_options  {
    http_tokens     = "required"
  }

  root_block_device {
    encrypted = true
  }

  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags
  )
}