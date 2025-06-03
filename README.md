# packer for custom ami creation on AWS (golden-ami)

Important links:
Packer installation:
  https://developer.hashicorp.com/packer/install
Plugins:
  . https://developer.hashicorp.com/packer/integrations/hashicorp/amazon
install zip:
  . sudo apt install zip -y

  
## aws cli installation:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## commands:
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install


Configure aws (avail access_key and secret_access_key via iAM > user > security credentials> access_keys:
  . aws configure
  access_key
  secret_access_key
