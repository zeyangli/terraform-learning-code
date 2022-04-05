//vpc专有网络
resource "alicloud_vpc" "vpc" {
  vpc_name   = "tf_test"
  cidr_block = "172.80.0.0/12"
}

//switch交换机
resource "alicloud_vswitch" "vsw" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = "172.80.0.0/21"
  zone_id    = "cn-beijing-b"
}