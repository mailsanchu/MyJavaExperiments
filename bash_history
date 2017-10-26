mvn clean install -DskipTests -P ci
pwd
mvn clean install -DskipTests -P ci
mvn clean install -DskipTests -P ci  -rf :digihost-package-ci
mvn -X clean install -DskipTests -P ci  -rf :digihost-package-ci
mvn --version
./deploy.sh 
sftp root@192.168.250.211
ls -ltr
sftp root@192.168.250.211
ssh root@i75
mysql -u root -prootpw Digisoft; 
exit
dpkg -l | grep linux-image
ls -l /etc/grub.d
cat 10_linux
sudo cat 10_linux
sudo apt-get purge $( dpkg --list | grep -P -o "linux-image-\d\S+" | grep -v $(uname -r | grep -P -o ".+\d") )
sudo update-grub
sudo update-grub2
Synaptic Package Manage
Synaptic Package Manager
sudo apt-get install synaptic
sudo apt-get remove --purge $(dpkg -l 'linux-image-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get update
sudo apt-get install ubuntu-tweak
uname -r
ubuntu-tweak
dpkg --list | grep linux-image 
exit
./release.sh
rm -rvf trunk/4.1.17/digihost4
./release.sh
cd trunk/4.1.17/digihost4 && mvn release:perform -Darguments=-DskipTests 
svn co http://svn.digisoft.tv:8080/svn/digisoft/tags/DigiHost/digihost4/digihost-4.1.17/ RELEASE
cd RELEASE && mvn install -P appliance,MTN-production -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@i75
ssh root@i75
sftp root@i98
ssh root@I98
cd ../../../../../..
cd ../../../
cd ../..
ls
rm -rvf trunk/4.1.17/digihost4
./release.sh
cd trunk/4.1.17/digihost4 && mvn release:perform -Darguments=-DskipTests 
svn co http://svn.digisoft.tv:8080/svn/digisoft/tags/DigiHost/digihost4/digihost-4.1.17/ RELEASE
cd RELEASE && mvn install -P appliance,MTN-production -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@i75
ssh root@i75
sftp root@i98
ssh root@I98
cd ../..
cd digihost-package-MTN-production/target/rpm/DigiHost-noarch/RPMS/noarch/
ls -ltr
sftp root@192.168.250.211
exit
sudo openvpn --config client.ovpn
exit
ssh root@i98
cd $D
./deploy.sh 1
mvn clean 
./deploy.sh
mvn clean 
./deploy.sh
mvn clean 
./deploy.sh
mvn clean 
./deploy.sh
mvn clean 
./deploy.sh
mvn clean install -DskipTests -P appliance
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/
ls -ltr
cd RPMS/
cd noarch/
ls -ltr
cd $D
mvn clean install -DskipTests -P MTN-production
cd digihost-package/digihost-package-MTN-production/target/rpm/DigiHost-noarch/RPMS/noarch/
cd $D
./deploy.sh 
mvn clean install -DskipTests -P MTN-production
mvn clean install -DskipTests -P appliance
exit
ssh root@i142
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/digihost.log | grep excep[tion
tail -f /var/log/digihost/digihost.log | grep exception
vi /var/log/digihost/digihost.log
ssh root@i98
svn propset svn:ignore target .
svn propset svn:ignore -F .svnignore .
mvn clean install -P ci -DskipTests
mvn 
mvn  --version
mvn clean install -P ci -DskipTests
mvn clean install -P ci -DskipTests -rf :digihost-package-ci
sudo vi /etc/hosts
ping irisserver-ci-as.digisoft.tv
mvn clean install -P ci -DskipTests -rf :digihost-package-ci
mvn clean
mvn clean install -P ci -DskipTests
#
mvn clean
./deploy.sh 
mvn clean
./deploy.sh 
mcn clean install
mvn  clean install
mvn  clean install  -rf :digihost-content-esb
./deploy.sh 
./deploy.sh 2
./deploy.sh
mvn  clean install
./deploy.sh 2
./deploy.sh
./deploy.sh 1
./deploy.sh
./deploy.sh 
./deploy.sh  2
./deploy.sh 
mvn  clean install
./deploy.sh 1
./deploy.sh
./deploy.sh 2
./deploy.sh
mvn clean 
./deploy.sh 
mvn clean 
./deploy.sh 
mvn clean 
./deploy.sh 
mvn clean install
mvn --version
cd
openvpn -version
openvpn --version
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -200f /var/log/digihost/system.log
tail -200f /var/log/digihost/digihost.log
tail -200f /var/log/digihost/system.log
cd $D
mvn clean 
tail -200f /var/log/digihost/system.log
tail -200f /var/log/digihost/system.lo
grep "MetaDataMapping" /var/log/digihost/digihost.log
rm -rvf /var/log/digihost/*.log
grep "MetaDataMapping" /var/log/digihost/digihost.log
rm -rvf /var/log/digihost/*.log
grep "MetaDataMapping" /var/log/digihost/digihost.log
rm -rvf /var/log/digihost/*.log
grep "MetaDataMapping" /var/log/digihost/digihost.log
rm -rvf /var/log/digihost/*.log
grep "MetaDataMapping" /var/log/digihost/digihost.log
rm -rvf /var/log/digihost/*.
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
sudo vi /etc/hosts
cd /var/log/digihost/Digisoft/audit/
tail -f audit.log
mysql -u root -prootpw Digisoft; 
cat reference-data-metadata-mapping.sql | mysql --force -u Digisoft -pDigisoft Digisoft;
ssh root@I98

ssh root@I98
ssh root@i142
ssh root@i75
ssh root@192.168.250.211
sudo openvpn --config client.ovpn
mysql -u root -prootpw Digisoft; 
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
ssh root@i75
sudo vi /etc/hosts
exit
ssh root@192.168.250.211
sftp root@192.168.250.211
ls
gedit test.txt 
exit
find . -name .svn -exec rm -rf {} \;
exit
mvn clean install -P DigiNG-QA
cd /var/log/digihost/
grep "PRICE_TO_PRODUCT_PROFILE" digihost*
grep "PRICE_TO_PRODUCT_PROFILE" *
ssh root@i142
ssh root@i98
wget http://plugins.jetbrains.com/files/4230/18873/BashSupport.jar

ssh root@i142
exit
sudo vi /etc/hosts
ping irisserver-ci-as.digisoft.tv
sudo vi /etc/hosts
ping smtp.magnet.ie
mysql -u root -prootpw Digisoft; 
exit
ping irisserver-ci-as.digisoft.tv
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
sudo vi /etc/hosts
ping irisserver-ci-as.digisoft.tv
ssh root@10.42.242.188
ssh henkins@i143
ssh jenkins@i143
exit

java -jar license-manager-4.0.28-SNAPSHOT-jar-with-dependencies.jar init -alias DigiNG
cd $D
mvn clean install -P DigiNG-QA
mvn clean install -P DigiNG-QA -DskipTests
pwd
./deploy.sh 
sudo vi /etc/hosts
ping irisserver.digisoft.tv
cd $D
./deploy.sh 
./deploy.sh 1
mvn clean
./deploy.sh
mvn clean
./deploy.sh
mvn clean
./deploy.sh
mvn clean
./deploy.sh
svn up
./deploy.sh
mvn clean 
./deploy.sh
./deploy.sh 1
./deploy.sh
mvn clean 
./deploy.sh 
./deploy.sh  2
mvn clean 
./deploy.sh
mvn clean 
./deploy.sh
./deploy.sh 2
./deploy.sh
./deploy.sh 1
./deploy.sh
./deploy.sh 2
./deploy.sh 1
mvn -q clean install  -DskipTests -P MTNNG-production
mvn clean
./deploy.sh 
mvn clean install -P DigiNG-QA
mvn clean install -P DigiNG-QA -DskipTests
ssh root@i98
ssh root@10.42.242.184
mvn clean install -P DigiNG-QA -DskipTests
ssh root@10.42.242.184
ssh root@10.42.242.188
ping http://irisdemo.digisoft.tv/

ssh root@10.42.242.188
mvn clean
./deploy.sh 
./deploy.sh  2
mvn clean
./deploy.sh 
./deploy.sh 2
./deploy.sh
ssh root@10.42.242.188
sudo vi /etc/hosts
ping ng-irisserver-qa-as.digisoft.tv
ssh root@10.42.242.188
sudo vi /etc/hosts
ping ng-portal-qa-as.digisoft.tv
sudo vi /etc/hosts
cd /var/log/digihost/
tail -f digihost.log
tail -f Digisoft/webservice/content_Rest.log
tail -f digihost.log
tail -f system.log
tail -f digihost.log
tail -f Digisoft/webservice/content_Rest.log
ping irisserver-ci-as.digisoft.tv
sudo vi /etc/hosts
ping irisserver-ci-as.digisoft.tv
ssh root@i98
ntpq -p
sudo ntpq -p
ssh root@I98
ssh root@nexus
ssh root@i142
cd $D
./deploy.sh 
mvn clean install 
./deploy.sh 
mvn clean 
./deploy.sh 
./deploy.sh  2
./deploy.sh  
mkdir -p ~/SANCHU/IrisServer/4.1.18
cp DigiHost-4.1.18-1.noarch.rpm ~/SANCHU/IrisServer/4.1.18/
cd ~/SANCHU/IrisServer/4.1.18
ls
./release.sh
cd trunk/4.1.18/digihost4
mvn release:perform -Darguments=-DskipTests
ll
svn co http://svn.digisoft.tv:8080/svn/digisoft/tags/DigiHost/digihost4/digihost-4.1.18/ RELEASE
cd RELEASE && mvn install -P appliance,MTN-production -DskipTests
sudo apt-get install winbind
ping i49
ping 10.42.243.49
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
sudo openvpn --v
sudo openvpn --version
sftp root@192.168.250.211
ssh root@192.168.250.211
sftp root@192.168.250.211
ls -ltr
gedit test.txt
ls -ltr
mv VU01428341_POSTER.jpg VU01428341.jpg
ls -ltr
sftp i75
sftp root@i75
ssh root@i75
ssh root:10.42.242.177
ssh root@10.42.242.177
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.177
ssh root@10.42.242.177
exit
ssh root@i98
exit
sftp root@10.42.242.177
cd $D
./deploy.sh 
./deploy.sh 2
./deploy.sh 
./deploy.sh 1
mvn clean
./deploy.sh 1
./deploy.sh
mvn clean
./deploy.sh
mvn clean
./deploy.sh
mvn clean
./deploy.sh
mvn clean
./deploy.sh
mvn clean && ./deploy.sh 
mvn clean install 
svn up
mvn clean install 
svn up
./deploy.sh
svn up
mvn clean install 
mvn clean
./deploy.sh
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/Digisoft/webservice/content_Rest.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/Digisoft/webservice/content_Rest.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/Digisoft/webservice/content_Rest.log
tail -f /var/log/digihost/digihost.log
tail -f /var/log/digihost/system.log
tail -f /var/log/digihost/digihost.log
cd /var/log/digihost/Digisoft/audit/
tail -f audit.log
tail -f /var/log/digihost/digihost.log
cd /var/log/digihost/Digisoft/audit/
cd ../webservice/
ls -ltr
tail -f usage_Rest.log
tail -200f usage_Rest.log
cd ../..
ls
tail -f digihost.log
tail -100f digihost.log
tail -f digihost.log
mysql -u root -prootpw Digisoft; 
ls -al /usr/lib/libicui18n.so
sudo apt-get install libicu48
ls -al /usr/lib/libicui18n.so.48.1.1
dpkg -L libicu48
ln -s /usr/lib/libicui18n.so /usr/lib/libicui18n.so.48.1.1
ln -s /usr/lib/libicui18n.so.48.1.1 /usr/lib/libicui18n.so
sudo ln -s /usr/lib/libicui18n.so.48.1.1 /usr/lib/libicui18n.so
ls -al /usr/lib/libicui18n.so
sftp root@192.168.250.211
exit
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
exit
ssh i98
ssh root@i98
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.tar.gz"
ln -s /opt/jdk1.7.0_75 /usr/java/latest
ls -l /usr/java/latest
ls -l /opt/jdk1.7.0_75
ssh root@i98
ssh root@10.42.243.216
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.243.216
ssh root@10.42.243.216
docker
ssh root@10.42.242.188
ssh root@nexus
ssh root@192.168.250.211
cd /var/log/digihost/
tail -f system.log
pwd
ls -al /usr/lib/libicui18n.so
pwd
cd ~
ls -la
ping i75
ping 10.42.243.75
pwd
ls -ltr
./HelloWorldC 
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
sftp root@192.168.250.211
ssh root@192.168.250.211
ssh root@10.42.242.161
##
vi pre.sh
./pre.sh
chmod +x pre.sh 
./pre.sh 
whoami
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
ssh root@192.168.250.211
sftp root@192.168.250.211
ls 
ls -ltr
sftp root@i75
ssh root@i75
chmod 400  Sanchu_test.pem 
ssh -i Sanchu_test.pem root@ec2-54-155-121-245.eu-west-1.compute.amazonaws.com
ssh -i Sanchu_test.pem ec2-user@ec2-54-155-121-245.eu-west-1.compute.amazonaws.com
ssh -i Sanchu_test.pem root@ec2-54-155-121-245.eu-west-1.compute.amazonaws.com
ssh -i Sanchu_test.pem ec2-user@ec2-54-155-121-245.eu-west-1.compute.amazonaws.com
ssh root@10.42.242.75
ssh root@10.42.243.75
#
cd $D
cd ~/SANCHU/abc/aws
pwd
ls -lte
ls -ltr
pwd
sudo vi /etc/hosts
pingrisserver.digisoft.tv 
ping irisserver.digisoft.tv 
telnet irisserver.digisoft.tv 8443
telnet 54.155.121.245 8443
[A
telnet 54.155.121.245 8443
telnet ec2-54-155-121-245.eu-west-1.compute.amazonaws.com  8443
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
sftp root@192.168.250.211
ssh root@192.168.250.211
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ssh-keygen -f "/home/svarkey/.ssh/known_hosts" -R 10.42.242.161
ssh root@10.42.242.161
ping 10.42.242.161
telnet 10.42.242.161 8443
ping irisserver.digisoft.tv
sudo vi /etc/hosts
ping irisserver.digisoft.tv
telnet 10.42.242.161 8443
ping 10.42.242.161
telnet 10.42.242.161 8443
ssh root@i98
ssh root@nexus
ssh root@10.42.242.188
sudo vi /etc/hosts
telnet irisserver.digisoft.tv 8443
#
telnet irisserver.digisoft.tv 8443
ssh root@52.17.118.227
ping 52.17.118.227
ping 8.8.8.8
ssh root@52.17.118.227
sudo apt-get install -y python-pip
sudo pip install awscli
aws ec2 describe-regions
aws ec2 get-console-output --instance-id i-f63f6511
aws configure
aws ec2 get-console-output --instance-id i-f63f6511
aws configure
aws ec2 get-console-output --instance-id i-f63f6511
aws configure
aws ec2 get-console-output --instance-id i-f63f6511
aws configure
aws ec2 describe-instances
aws configure
aws ec2 describe-instances
aws ec2 get-console-output --instance-id i-f63f6511
ls
ls -ltr
aws ec2 get-console-output --instance-id i-f63f6511
ec2-get-console-output --instance-id i-f63f6511
aws ec2 get-console-output --instance-id i-f63f6511
sudo apt-get install ec2-api-tools
ec2-get-console-output --instance-id i-f63f6511
ec2-get-console-output
aws ec2 get-console-output -v --instance-id i-f63f6511
aws ec2 get-console-output --v --instance-id i-f63f6511
aws ec2 get-console-output --?
aws ec2 get-console-output -?
aws ec2 get-console-output --instance-id i-f63f6511
aws ec2 get-console-output --v --instance-id i-f63f6511
aws configure
ssh root@i98
exit
cat ~/.ssh/id_rsa.pub |
cat ~/.ssh/id_rsa.pub 
cd $D
svn info
openvpn -v
openvpn -version
openvpn --version
ping google.com
cd $D
./deploy.sh 
./release.sh
cd trunk/4.1.19/digihost4 && mvn release:perform -Darguments=-DskipTests
svn co http://svn.digisoft.tv:8080/svn/digisoft/tags/DigiHost/digihost4/digihost-4.1.19/ RELEASE
cd RELEASE && mvn install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/
cd target/rpm/DigiHost-noarch/RPMS/noarch/
ls -ltr
mkdir ~/SANCHU/IrisServer/4.1.19
cp DigiHost-4.1.19-1.noarch.rpm  ~/SANCHU/IrisServer/4.1.19
ec2-describe-regions
sudo apt-get install ec2-api-tools
wget http://s3.amazonaws.com/ec2-downloads/ec2-api-tools.zip
sudo mkdir /usr/local/ec2
sudo unzip ec2-api-tools.zip -d /usr/local/ec2
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.3.2
export PATH=$PATH:$EC2_HOME/bin 

cd ~/SANCHU/abc/aws
ls
ec2-describe-regions -K Sanchu_test.pem 
ec2-describe-regions ---private-key KEY Sanchu_test.pem 
ec2-describe-regions
echo $EC2_JVM_ARGS 
export AWS_ACCESS_KEY=AKIAJ5ZSYILGGHMLMABQ
export AWS_SECRET_KEY=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
ec2-describe-regions
echo $ AWS_ACCESS_KEY
echo $AWS_ACCESS_KEY
ec2-describe-regions --aws-access-key AKIAJ5ZSYILGGHMLMABQ --aws-secret-key 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
ec2-describe-regions -v
ec2-describe-regions -v -U https://eu-west-1.console.aws.amazon.com/console/home?region=eu-west-1
ec2-describe-regions -v -U https://eu-west-1.console.aws.amazon.com/console/home?region=eu-west-1 -K Sanchu_test.pem 
aws
whic aws
which aws
aws help
aws ec2 describe-instances 
aws configure
aws ec2 describe-instances 
aws -v ec2 describe-instances 
aws help
aws -debug ec2 describe-instances 
aws --debug ec2 describe-instances 
aws --debug ec2 describe-instances --filter "instance-state-code=running"
aws ec2 describe-instances --filter "instance-state-code=running"
aws --debug ec2 describe-instances 
aws --debug ec2 describe-instances -instance-type m3.large
aws --debug ec2 describe-instances --instance-type m3.large
aws --debug ec2 describe-instances --key-name SAn
aws --debug ec2 describe-instances --instance-state-name  running
aws --debug ec2 describe-instances --filter "instance-state-name=running"
aws --debug ec2 describe-instances --filter instance-state-name=running
aws --debug ec2 describe-instances --filters ip-address=1
aws --debug ec2 describe-instances --filters Name=1
aws --debug ec2 describe-instances --filters Values=1
aws --debug ec2 describe-instances --filter instance-state-name=running
aws --debug ec2 describe-instances --filter Name=instance-state-name,Values=running
aws  ec2 describe-instances --filter Name=instance-state-name,Values=running
aws  --verbose ec2 describe-instances --filter Name=instance-state-name,Values=running
aws  --v ec2 describe-instances --filter Name=instance-state-name,Values=running
aws  ec2 describe-instances --filter Name=instance-state-name,Values=running
aws  ec2 describe-instances --filter Name=ImageId,Values=ami-25158352
aws  ec2 describe-instances --filter Name=image-id,Values=ami-25158352
cd ..
ls
cd kwivpn13-udp-1194-aroche-digisoft/
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
ec2-describe-image
ec2-describe-images
aws  ec2 ec2-describe-images
aws   ec2-describe-images
./ ec2-describe-images
ec2-describe-images
aws
aws  ec2-describe-images
aws  ec2 --help
aws  ec2  ec2-describe-images
aws  ec2  describe-images
aws  --debug ec2  describe-images
aws  --debug ec2  describe-images --filters Name=image-id,Values=
history | aws
history | grep aws
aws  --debug ec2  describe-images --filters Name=image-id,Values==ami-25158352
history | grep aws
ec2 describe-instances --filter Name=image-id,Values=ami-25158352
aws ec2 describe-instances --filter Name=image-id,Values=ami-25158352
aws ec2 describe-images --filter Name=image-id,Values=ami-25158352
aws ec2 describe-images --image-ids ami-25158352
ping mtnrsa-iris.discoverdigital.co.za
aws ec2 describe-instances --filter Name=image-id,Values=ami-25158352
aws ec2 run-instances -k Sanchu_test -g sg-b81399ce
aws run-instances ami-25158352 -k Sanchu_test -g sg-b81399ce
aws ec2 run-instances ami-25158352 -k Sanchu_test -g sg-b81399ce
aws ec2 run-instances --image-id ami-25158352 -k Sanchu_test -g sg-b81399ce 
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce

aws ec2 describe-instances --filter Name=image-id,Values=ami-25158352
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce
history | grep aws
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce 
aws ec2 describe-instances --filter Name=image-id,Values=ami-25158352
aws ec2 describe-instances --filter Name=image-id,Values=ami-25158352 --instance-type  m3.large
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce  --instance-type  m3.large
ssh root@192.168.250.211
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
cd $D
./deploy.sh 
mvn clean
./deploy.sh 
mvn clean
./deploy.sh 
mvn clean install
./deploy.sh 
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
ls -ltr
sftp root@10.42.242.161
cd $D
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@10.42.242.161
cd $D
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@10.42.242.161
cd $D
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@10.42.242.161
cd $D
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@10.42.242.161
cd $D
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@10.42.242.161
cd $D
mvn -q clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp root@10.42.242.161
cd $D
./deploy.sh 
which java
sudo apt-get remove openjdk-6-jre default-jre default-jre-headless
which java
java -version
dpkg --get-selections | grep -v deinstall
dpkg --get-selections | grep -v deinstall | grep open
sudo apt-get remove openjdk-6-jre-headless openjdk-6-jre-lib
which java
./deploy.sh 
svn up2
./deploy.sh 
./deploy.sh 2

ls
sftp root@10.42.242.161
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.155.121.245
ssh  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.155.121.245
ssh  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
sudo vi /etc/hosts
ssh  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
ssh root@i98
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
cd $D
svn up
cd scripts/node/
ls
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
tail -f /var/log/nginx/error.log
tail -f /var/log/nginx/access.log
sudo service nginx restart
tail -f /var/log/nginx/access.log
tail -f /var/log/nginx/error.log
sudo service nginx restart
ls
cd /etc/nginx/
ls
ls -ltr
sudo vi nginx.conf
sudo service nginx restart
dpkg --get-selections | grep -v deinstall
dpkg --get-selections | grep -v deinstall | grep open
dpkg --get-selections | grep -v deinstall | grep openj
sudo apt-get remove openjdk-6-jre-lib openjdk-6-jre-headless
sudo apt-get remove autoremove
sudo apt-get  autoremove
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get update
sudo apt-get autoclean
sudo apt-get update
sudo vi /etc/apt/sources.list
sudo apt-get update
sudo vi /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoclean
sudo apt-get clean
exit
cd $D
cd scripts/
svn up
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
exit
ssh root@i98
w
ping irisserver-ci-as.digisoft.tv
sudo vi /etc/hosts
ping irisserver-ci-as.digisoft.tv
ssh root@192.168.250.211
exit
mvn clean install -P MTN_Production -DskipTests
mvn clean install -P MTN-production  -DskipTests
cd digihost-package/digihost-package-MTN-production/target/rpm/DigiHost-noarch/RPMS/noarch/
ls -ltr

sftp root@192.168.250.211
exit
ssh root@192.168.250.211
exit
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
exit
ail -f /var/log/digihost/Digisoft/webservice/content_Rest.log
tail -f /var/log/digihost/Digisoft/webservice/content_Rest.log
tail -f /var/log/digihost/digihost.log
tail -200f /var/log/digihost/digihost.log
cd /var/log/digihost/
ls -ltr
tail -f d
tail -f digihost.log
mysql -u root -prootpw Digisoft; 
telnet 54.195.8.168 80
tail -f /var/log/digihost/Digisoft/audit/audit.log
mysql -u root -prootpw Digisoft; 
vi a
ls -ltr
grep grep "Defaults.*requiretty"
sed 's/Defaults    requiretty/#Defaults    requiretty/' a
vi a
sed 's/Defaults    requiretty/#Defaults    requiretty/' a
sed -i 's/Defaults    requiretty/#Defaults    requiretty/' a
vi a
sed 's/#Defaults    requiretty/Defaults    requiretty/' a
sed -i 's/#Defaults    requiretty/Defaults    requiretty/' a
vim a
clear
mvn -q install -DskipTests
mvn -X install -DskipTests
exit
svn info
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
ls
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
ls
cd ~
cd dev/tst/
clear
vi a 
exit
sed 's/- update_hostname/#- update_hostname/' b
sed 's/- update_etc_hosts/#- update_etc_hosts/' b
cd SANCHU/
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
/usr/local/bin/aws --version
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
exit
cd $D
./deploy.sh 
mysql -u root -prootpw Digisoft;  
./deploy.sh 1
mysql -u root -prootpw Digisoft;  
./deploy.sh 1
./deploy.sh
cd digihost-core/digihost-core-ap
cd digihost-core/digihost-core-api/
mvn clean install
mvn clean install -DskipTests
cd ../..
./deploy.sh 
cd digihost-content-feature/ digihost-content-index
mvn clean install 
cd digihost-content-index/
mvn -X clean install 
mvn -X clean install -DskipTests
cd $D
./deploy.sh 
cd digihost-facade/
mvn clean install 
cd digihost-facade-oauth
mvn clean install 
cd $D
./deploy.sh 
mvn clean install -DskipTests -rf :digihost-mtn-webservice
mvn clean install -DskipTests -rf :digihost-usage-webservice
./deploy.sh 
./deploy.sh
./deploy.sh 1
./deploy.sh
mvn clean install 
history | aws
history | grep aws
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce  --instance-type  m3.large
ssh rrot@i142
ssh root@i142
sudo vi /etc/hosts
exit
ping irisserver-ci-as.digisoft.tv
exit
tail -f /var/log/digihost/digihost.log
exit
exit
cd  $D
./deploy.sh 1
./deploy.sh
svn up
cd ~
cd SANCHU/abc/aws/
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@ec2-54-195-8-168.eu-west-1.compute.amazonaws.com
mysql -u root -prootpw Digisoft; 
exit
which jq
which jq1
echo $?
which jq
echo $?
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16
exit
chmod +x ./jq
sudo cp jq /usr/bin
JS
jq
mvn clean install -DskipTests -P appliance
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16
chmod  +x jq 
./jq 
cd $D
./deploy.sh 
svn co http://svn.digisoft.tv:8080/svn/digisoft/trunk/DigiHost/digihost4-devops/
chmod +x *.sh
./prepare_iris_server_install_cent0s_7.sh 
sudo ./prepare_iris_server_install_cent0s_7.sh 
sudo ./prepare_iris_server_install_cent0s_7.sh /a
pwd
ls
sudo ./prepare_iris_server_install_cent0s_7.sh assign.sh
sudo ./prepare_iris_server_install_cent0s_7.sh 
sudo ./prepare_iris_server_install_cent0s_7.sh a a
cd $D
mvn clean install -DskipTests -P appliance
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.75.18.167
ssh  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.75.18.167
ssh -i Sanchu_test.pem ec2-user@54.217.204.16
ls
sftp  -i Sanchu_test.pem ec2-user@54.217.204.16

ls
sftp  -i Sanchu_test.pem ec2-user@54.217.204.16
ssh  -i Sanchu_test.pem ec2-user@54.217.204.16
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.220.156.221
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.220.156.221
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.220.156.221
ls
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.220.156.221
ls -ltr
vi orchestrate.sh 
ssh -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.65.190 
cd ~/SANCHU/abc/aws/
ls -ltr
sftp  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.65.190 
ssh  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.65.190 
cd ~/dev/RELEASE/trunk/4.1.18/digihost4/RELEASE/digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
sftp  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.65.190 
ssh  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.65.190 
ping http://irisportal-demo.digisoft.tv/
ping irisportal-demo.digisoft.tv
cd $D
./deploy.sh 
./idea.sh 
which java
./idea.sh 
wine
./wine
./idea.sh 
./createAndGetIp.sh
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.220.47.61"
./createAndGetIp.sh
tcping
./createAndGetIp.sh
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@ 54.155.20.37"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.20.37"
./createAndGetIp.sh
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.74.11.26"
./createAndGetIp.sh
#

ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.220.18.202"
ls -ltr
rm -rvf installRunDeck.sh~

ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.60.66"
ls
sftp  -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.60.66"
sftp    -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.60.66"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.60.66"
sudo apt-get install ansible
ls
ansible-playbook test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
vi hosts.txt
ansible-playbook test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -i hosts test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ls
touch hosts.txt
ansible-playbook -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
which phyton
sudo apt-get install python-boto
which phyton
sudo apt-get install python
ansible --version
phyton
python
ansible-playbook -vvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
which python
ansible-playbook -vvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
which python
ansible-playbook -vvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
which python
ansible-playbook -vvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
aws configure
ansible-playbook -vvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
aws configure
ansible-playbook -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
aws configure
ansible-playbook -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i  test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
vim test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt test.yml 
ansible-playbook -vvvv -i hosts.txt test.yml
echo $AWS_ACCESS_KEY_ID
export AWS_ACCESS_KEY_ID=AKIAJ5ZSYILGGHMLMABQ
export AWS_SECRET_ACCESS_KEY=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
echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.161.98"
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
clear
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt test.yml
ansible-playbook -vvvv -i hosts.txt test.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml 
clear
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
clear
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt --private-key=~/SANCHU/abc/aws/Sanchu_test.pem deleteAwsNode.yml 

ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt --private-key=~/SANCHU/abc/aws/Sanchu_test.pem deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt --private-key=~/SANCHU/abc/aws/Sanchu_test.pem deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check

export AWS_SECRET_ACCESS_KEY=5sZyb0H8jUBjurKssdf/Nqb+D6Z+5dy/calwJ+z0
ansible-playbook -vvvv -i hosts.txt --private-key=~/SANCHU/abc/aws/Sanchu_test.pem deleteAwsNode.yml 
echo $AWS_SECRET_ACCESS_KEY
export $AWS_ACCESS_KEY_ID
echo $AWS_ACCESS_KEY_ID
history | grep ansible
ansible-playbook -vvvv -i hosts.txt --private-key /SANCHU/abc/aws/Sanchu_test.pem deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key /SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
clear
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
clear
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
history | grep aws
ansible-playbook -vvvv -i hosts.txt  test.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
clear
ansible-playbook -vvvv -i hosts.txt  test.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
echo $AWS_ACCESS_KEY_ID
which phyton
which phython
ansible
ansible -a
ansible --v
ansible -v
ansible -version
ansible -v
ansible --version
aws ec2 terminate-instances i-7f684199
aws ec2 terminate-instances --instance-ids=i-7f684199
aws ec2 terminate-instances --instance-ids=i-c293bd24,i-c393bd25,i-c093bd26
aws ec2 terminate-instances --instance-ids=i-c293bd24
aws ec2 terminate-instances --instance-ids=i-c393bd25
aws ec2 terminate-instances --instance-ids=i-c093bd26
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
cle
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem 
clear
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem --user=ec2-user
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem --u=ec2-user
#
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem --u=ec2-user
ec2.py --list
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem --u=ec2-user
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem --u=ec2-user
ansible-playbook --verbose -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem --u=ec2-user
vi ~/.boto
python
vi ~/.boto
sudo vi /etc/profile
. /etc/profile
echo $AWS_ACCESS_KEY_ID
telnet 54.220.18.202 4400
cd ~/.ansible/tmp/a
cd ~/.ansible/tmp/
ls
ls -ltr
cd ansible-1430306447.35-235452900942821
ls
echo $AWS_ACCESS_KEY_ID
. /etc/profile
echo $AWS_ACCESS_KEY_ID
history
echo $AWS_ACCESS_KEY_ID
. /etc/profile
echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
which python
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
which python
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
echo $PYTHONPATH
cd /usr/lib/python2.7
ls
cd ~
cd dev/code/digihost4-devops/
ls
cd scripts/
phyton -v
python -v
pip install boto
python
ansible --version
sudo apt-get update
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:rquillo/ansible
sudo apt-get update
sudo apt-get update ansible
sudo apt-get install ansible
ansible --version
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ls
cd  node/
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i delete  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i 54.195.73.225  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i hosts  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
echo PATH
echo $PATH
export PATH=/home/svarkey/dev/app/ansible-1.9.1/bin:$PATH
echo $PATH
ansible --version
. /etc/profile
ansible --version
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
sudo apt-get update
sudo apt-get install ansible
ansible --version
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get install python-software-properties
sudo apt-add-repository ppa:ansible/ansible

ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
pip install boto --upgrade
sudo pip install boto --upgrade
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.78.35.72"


ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars "spot_price=0.005 spot_count=2" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars "spot_price=0.005 spot_count=2" 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars "spot_price=0.005 spot_count=2" 
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars "spot_price=0.005 spot_count=2" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars= "spot_price=0.005 spot_count=2" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars="spot_price=0.005 spot_count=2" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars="{spot_count=2}" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars="spot_count=2" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars "spot_count=2" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars "spot_count=6" 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '"{instance_ids":["i-c1103f27","i-22dfefc5"]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instance_ids":["i-c1103f27","i-22dfefc5"]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instance_ids":[i-c1103f27,i-22dfefc5]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instance_ids":["i-c1103f27","i-22dfefc5"]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":["i-c1103f27","i-22dfefc5"]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":"i-c1103f27","i-22dfefc5"}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":["i-c1103f27","i-22dfefc5"]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":"i-c1103f27"]}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":"i-c1103f27"}' 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars {"instanceids": [ "i-c1103f27", "i-c1103f27"]}
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids": [ "i-c1103f27", "i-c1103f27"]}'
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids": [ i-c1103f27, i-c1103f27]}'
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids": [ "i-c1103f27", "i-c1103f27"]}'
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars @testfile.json
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars @testfile.json
#
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars 
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":"i-22dfefc5" }'
pip list | grep json
pip install list | grep json
sudo apt-get install  python-simplejson
pip install list | grep json
ansible-playbook -vvvv -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":"i-22dfefc5" }'
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --extra-vars '{"instanceids":"i-22dfefc5" }'
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --e '{"instanceids":"i-22dfefc5" }'
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --e '{"instanceids":["i-22dfefc5","restr"] }'
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --e '{"instanceids":["i-22dfefc5"] }'
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --e '{"instanceids":"i-22dfefc5" }'
clear
ansible-playbook -vvvv -i hosts.txt  test.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --e '{"instanceids":"i-753a1393" }'
ansible-playbook  -i hosts.txt  deleteAwsNode.yml --private-key ~/SANCHU/abc/aws/Sanchu_test.pem  --e '{"instanceids":["i-753a1393","i-753a1393"] }'
ansible-playbook -vvvv -i hosts.txt deleteAwsNode.yml --syntax-check

ansible-playbook -vvvv -i hosts.txt  test.yml --private-key=~/SANCHU/abc/aws/Sanchu_test.pem 
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.216.107.23"
sftp -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.216.107.23"
sftp   -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.216.107.23"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.216.107.23"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.155.161.98"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@54.216.107.23"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@ec2-54-216-107-23.eu-west-1.compute.amazonaws.com"
telnet 54.216.107.23
telnet 54.216.107.23 22
./createAndGetIp.sh 
sftp  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.75.18.167
ls -ltr
./createAndGetIp.sh
vi get_ip.sh
chmod +x get_ip.sh 
./get_ip.sh i-707e2296
ls
gedit ndrew
ndrew
gedit get_ip.sh 
./get_ip.sh i-707e2296
aws ec2 describe-instancesi-707e2296
aws ec2 describe-instances i-707e2296
aws ec2 describe-instances --instance-ids  i-707e2296
./get_ip.sh i-707e2296
./get_ip.sh -i i-707e2296
./get_ip.sh -h
./get_ip.sh -i i-707e2296
./get_ip.sh
jq
vi get_ip.sh
gedit get_ip.sh
./get_ip.sh
vi get_ip.sh
./get_ip.sh
vi get_ip.sh
vi createAndGetIp.sh
chmod +x createAndGetIp.sh 
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce  --instance-type  m3.large | jq '.ReservationId'
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce  --instance-type  m3.large 
aws ec2 run-instances --image-id ami-25158352 --key-name Sanchu_test --security-group-ids sg-b81399ce  --instance-type  m3.large | jq '.Instances[0].InstanceId'
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
./createAndGetIp.sh 
vi createAndGetIp.sh
aws ec2 create-tags --resources  $INSTANCE_ID -tags "Key=Name,Value=Sanchu_Test"
aws ec2 create-tags --resources  i-63d2f385  --tags "Key=Name,Value=Sanchu_Test"
vi createAndGetIp.sh
. createAndGetIp.sh
vi createAndGetIp.sh
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16

ls

./createAndGetIp.sh 
ls
cd $D
cd ..
ls
cd digihost4-devops/
cd scripts/
ls
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.4.36
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.190.17
cd Downloads/
sudo openvpn --config client.ovpn
ping 10.89.18.193
ping 5.5.9.237
ping 5.5.8.1
ping d 87.198.173.219
ping  87.198.173.219
cd $D
cd ..
ls
cd digihost4-devops
ls
cd scripts/
ls
cd node
. /etc/profile
history | grep ansible
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.255.193
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.255.193
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.255.193
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.17.213
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.75.112.175
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.220.68.141
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.74.250.253
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.207.119
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.207.119
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.78.207.119
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.170.125.32
ping www.sagepay.co.za 
traceroute  www.sagepay.co.za 
nslookup  www.sagepay.co.za
cat /etc/hosts
nslookup  www.sagepay.co.za
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.155.215.251
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.73.77.135
ip r | awk '/^def/{print $3}'
route -n | grep 'UG[ \t]' | awk '{print $2}'
which ip
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.73.77.135
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@79.125.79.145
ssh root@i98
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@79.125.79.145
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@79.125.79.47
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.74.159.100
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.73.164.186
sudo route -n
ping 10.42.243.111
ping 10.42.243.62
ping google.com
ping i98
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.73.77.135
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.73.164.186
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.73.164.186
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.246.62.149
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.155.169.161
ssh root@192.168.250.211
exit
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
ansible-playbook -i inventories/loadbal roles/loadbal/tasks/main.yml --syntax-check
ansible-playbook --version
cat /etc/ansible/ansible.cfg
rm -rvf /etc/ansible/ansible.cfg
sudo rm -rvf /etc/ansible/ansible.cfg
sudo apt-get remove ansible
sudo apt-get install  ansible
ansible-playbook --version
ansible-playbook -i inventories/loadbal roles/loadbal/tasks/main.yml --syntax-check
cd ..
ls
cd digihost/
ansible-playbook -i inventories/qa roles/common/tasks/main.yml --syntax-check
ansible --version
ansible-playbook -i inventories/qa roles/common/tasks/main.yml --syntax-check
cd ../..
ls
cd scripts/
cd ..
ls
cd scripts/
cd node/
ansible-playbook -i hosts.txt deleteAwsNode.yml --syntax-check
echo $ANSIBLE_LIBRARY
pip list
pip install list
sudo pip install list
ansible-playbook -i hosts.txt deleteAwsNode.yml --syntax-check
cd ../..
ls
cd ansible/loadbalancer/
ansible-playbook -i inventories/loadbal roles/loadbal/tasks/main.yml --syntax-check
ansible-playbook -vvvv -i inventories/loadbal roles/loadbal/tasks/main.yml --syntax-check
ansible-playbook -vvvv -i inventories/loadbal roles/loadbal/tasks/main.yml
ansible --version
ansible-doc --list
!
pip --version
sudo apt-get remove ansible
sudo pip install ansible
ansible-doc --list
ansible-playbook -vvvv -i inventories/loadbal roles/loadbal/tasks/main.yml
export PATH=/usr/local/bin:$PATH
ansible-playbook -vvvv -i inventories/loadbal roles/loadbal/tasks/main.yml
pip --version
ansible --version
ansible-playbook -vvvv -i inventories/loadbal roles/loadbal/tasks/main.yml
./idea.sh 
grep -iR "bypass" .
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.217.204.16
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@52.17.159.103
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@52.16.198.212
telnet 52.16.198.212
telnet 52.16.198.212 22
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@52.16.198.212
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@52.17.243.170
sftp -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@52.17.243.170
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@52.17.243.170
telnet 10.42.242.216 80
telnet 10.42.242.216 443
ping 10.42.242.216
ssh root@i98
traceroute 10.42.243.98
sudo apt-get install traceroute
traceroute 10.42.243.98
ping 8.8.8.8
tail -f /var/log/nginx/access.log
ssh root@192.168.250.211
exit
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
exit
ansible-playbook -vvvv -i inventories/loadbal roles/loadbal/tasks/main.yml
ansible-playbook --version
ansible-doc --list
1
ls
cd ..
ls
svn up
l
cd loadbalancer/
ls
cat README.txt 
ssh-copy-id root@10.42.242.161
ssh-keygen
ssh-copy-id root@10.42.242.161
ssh root@10.42.242.161
cat README.txt 
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ssh -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem ec2-user@54.155.169.161
history | grep ssh
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@ec2-54-216-107-23.eu-west-1.compute.amazonaws.com"
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   "ec2-user@52.17.243.170
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@52.17.243.170
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv

ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ansible-playbook -i inventories/loadbal loadbal.yml -vvvv
ssh root@10.42.242.161
ping irisserver.digisoft.tv
sudo vi /etc/hosts
ping irisserver.digisoft.tv
sudo vi /etc/hosts
ping irisserver.digisoft.tv
mysql -u root -prootpw Digisoft; 
cd $D/scripts
ls
./create-operator.sh
chmod +x create-operator.sh
./create-operator.sh
cd ..
./deploy.sh 
./deploy.sh 1
mysql -u root -prootpw Digisoft; 
cd scripts/
./create-operator.sh#
./create-operator.sh
mysql -u root -prootpw Digisoft; 
./create-operator.sh
mysql -u root -prootpw Digisoft; 
./create-operator.sh
mysql -u root -prootpw Digisoft; 
./create-operator.sh
mysql -u root -prootpw Digisoft; 
./create-operator.sh
mysql -u root -prootpw Digisoft; 
./create-operator.sh
mysql -u root -prootpw Digisoft; 
./create-operator.sh
mysql -h irisserver.digisoft.tv --force -u Digisoft -pDigisoft Digisoft
mysql  --force -u Digisoft -pDigisoft Digisoft
mysql -u root -pdigihost ;
mysql -u root -p ;
sudo vi /etc/mysql/my.cnf
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u Digisoft -pDigisoft Digisoft
netstat -ln | grep mysql
netstat -ln
sudo vi /etc/mysql/my.cnf
netstat -ln | grep mysql
mysql -h irisserver.digisoft.tv  --force -u root -p
./create-operator.sh
mysql -h irisserver.digisoft.tv  --force -u root -p
ping irisserver.digisoft.tv;
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u Digisoft -p
mysql -h irisserver.digisoft.tv  --force -u root -p
mysql -h irisserver.digisoft.tv  --force -u Digisoft -pDigisoft;
mysql --h irisserver.digisoft.tv  --force -u Digisoft -pDigisoft;
mysql help
mysql --help
mysql --h irisserver.digisoft.tv --force -u Digisoft -pDigisoft;
mysql -h irisserver.digisoft.tv --force -u Digisoft -pDigisoft;
mysql  --force -u Digisoft -pDigisoft -h irisserver.digisoft.tv
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
nc -z -w1 irisserver.digisoft.tv 3306
telnet -e X irisserver.digisoft.tv 3306
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
mysql  --force -u Digisoft -pDigisoft -h irisserver.digisoft.tv
mysql  --force -u Digisoft -pDigisoft -h test
mysql  --force -u Digisoft -pDigisoft -hirisserver.digisoft.tv
mysql  --force -u Digisoft -pDigisoft 
mysql  --force -u Digisoft -pDigisoft -hirisserver.digisoft.tv --protocol=tcp
sudo vi /etc/mysql/my.cnf
sudo service mysql restart
mysql  --force -u Digisoft -pDigisoft -hirisserver.digisoft.tv --protocol=tcp
mysql  --force -u Digisoft -pDigisoft -h irisserver.digisoft.tv --protocol=tcp
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
./create-operator.sh
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
./create-operator.sh
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
./create-operator.sh
mysql -h irisserver.digisoft.tv --force -u Digisoft -pDigisoft Digisoft
mysql -h irisserver.digisoft.tv  -u Digisoft -pDigisoft Digisoft
mysql -h irisserver.digisoft.tv  -u root -prootpw digihost;
mysql -h 127.0.0.1  -u Digisoft -pDigisoft Digisoft
mysql -h 0.0.0.0  -u Digisoft -pDigisoft Digisoft
ll /var/run/mysqld/mysqld.sock
sudo vi /etc/hosts
sudo service mysql restart
mysql -h 0.0.0.0  -u Digisoft -pDigisoft Digisoft
mysql -h irisserver.digisoft.tv  -u Digisoft -pDigisoft Digisoft
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
sudo vi /etc/mysql/my.cnf
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
sudo vi /etc/hosts
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
mysql -h irisserver.digisoft.tv  -u Digisoft -pDigisoft Digisoft
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
sudo vi /etc/hosts
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
mysql -h irisserver.digisoft.tv  -u Digisoft -pDigisoft Digisoft
mysql -h irisserver.digisoft.tv  -u digihost -pdigihost digihost;
mysql -h irisserver.digisoft.tv  -u Digisoft -pDigisoft Digisoft
sudo vi /etc/hosts
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
mysql -u root -prootpw Digisoft; 
sudo service mysql restart
mysql -u root -prootpw Digisoft; 
mysql -u root -prootpw Digisoft; 
ssh root@i98
ssh root@i98
tail -f /var/log/mysql.log
tail -f /var/log/mysql/error.log
cd /var/log/
sudo rm -rvf mysql*
sudo mkdir mysql
chmod 777 mysql/
sudo chmod 777 mysql/
sudo service mysql restart
ls *mysql*
cd mysql/
ls
tail -f error.log error.log 
tail -f error.log 
sudo tail -f error.log 

ssh root@i98
cd ~/SANCHU/abc/kwivpn13-udp-1194-aroche-digisoft/
pwd
ssh-copy-id root@ddiris11.infoview.tv
ssh-copy-id root@192.168.250.211
ssh root@192.168.250.211
exit
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
cd /home/svarkey/SANCHU/abc/kwivpn13-udp-1194-aroche-digisoft
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
ssh root@i98
cat /etc/hosts

ssh root@192.168.250.211
exit
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
exit
cp -fv digihost_keystore.jks /var/digihost/remote/keystore
cd mv -fv /opt/digihost/config/digihost_keystore.jks /var/digihost/remote/keystore
cd  /var/digihost/remote/keystore
mkdir -p /var/digihost/remote/keystore
rm -rvf /var/digihost/remote/keystore
mkdir -p /var/digihost/remote/keystore
cp -fv digihost_keystore.jks /var/digihost/remote/keystore
cd /var/digihost/remote/keystore
ls
cd  $D#
mvn -q clean install 
mvn -q clean install
cd $D
mvn -q clean install
#
mvn clean install
./deploy.sh 
mysql -u root -prootpw Digisoft; 
sudo vi /etc/hosts
sudo service mysql restart
mysql -u root -prootpw Digisoft; 
sudo vi /etc/hosts
ping irisserver.digisoft.tv;
sudo service mysql restart
mysql -u root -prootpw Digisoft; 
mysql -u Digisoft -pDigisoft Digisoft; 
mysql -u Digisoft -pDigisoft Digisoft -h irisserver.digisoft.tv; 
mysql -u digihost -pdigihost  -h irisserver.digisoft.tv; 
cd ../..
ls
/////////////////////////////////
ls -ltr
cd idea-IC-141.177.4/bin/
./idea.sh 
mysql -u root -prootpw Digisoft; 
cd $D
mysql -u root -prootpw Digisoft; 
cd scripts/
./create-operator.sh
sudo vi /etc/hosts
./create-operator.sh
mysql -u root -prootpw -h irisserver.digisoft.tv;
GRANT ALL PRIVILEGES ON root.* TO 'root'@'irisserver.digisoft.tv' WITH GRANT OPTION; 
mysql -u root -prootpw Digisoft; 
mysql -u root -prootpw ;
mysql -u root -prootpw -h irisserver.digisoft.tv;
mysql -u root -prootpw Digisoft; 
mysql -u root -prootpw;
ping irisserver.digisoft.tv
mysql -u root -prootpw -h  irisserver.digisoft.tv;
mysql -u root -prootpw;
sudo vi /etc/mysql/my.cnf
sudo service mysql restart
mysql -u root -prootpw;
mysql -u Digisoft -pDigisoft -h irisserver.digisoft.tv;
mysql -u digihost -pdigihost -h irisserver.digisoft.tv;

mysql -u root -prootpw ;
mysql -u root -prootpw -h irisserver.digisoft.tv;
./create-operator.sh
mysql -u root -prootpw -h irisserver.digisoft.tv;
./create-operator.sh
cd ..
./deploy.sh 
mvn clean install -q
hostory | grep mysql
history | grep mysql
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
sudo service mysql restart
mysql -h irisserver.digisoft.tv  --force -u root -prootpw
mysql  --force -u root -prootpw
cd $D
cd scripts/
./create-operator.sh
mysql  --force -u root -prootpw
./create-operator.sh
mysql  --force -u root -prootpw
./create-operator.sh
mysql  --force -u root -prootpw
./create-operator.sh
sudo apt-get update
sudo vi /etc/hosts
ping digihost_dataserver_1
mysql  --force -u root -prootpw
ssh root@i98
cat /etc/mysql/my.cnf
ssh root@i98
ssh root@192.168.250.211
top
sudo mkdir svarkey
chown -R 700 svarkey/
sudo chown -R 700 svarkey/
df -h
sudo hdparm -I /dev/sda1
df -h
ls -h
ls -ltr
rm -rvf 
rm -rvf  "United States.wmv"
rm -rvf  tmp_3595079.wmv 
ls -ltr
du VirtualBox\ VMs/]
du VirtualBox\ VMs/
du -c VirtualBox\ VMs/
du -ah VirtualBox\ VMs/
df -h
rm -rvf VirtualBox\ VMs/
df -h
du -ah Downloads/
du -a /home | sort -n -r | head -n 10
mount -a
sudo mount -a
sudo mount -l
file:///home/svarkey/Downloads/mailer_images file:///home/svarkey/Downloads/End%202%20End%20Tests file:///home/svarkey/Downloads/Blacksails%20Update file:///home/svarkey/Downloads/LG file:///home/svarkey/Downloads/UHD%204K file:///home/svarkey/Downloads/The%20Hot%20Spot file:///home/svarkey/Downloads/Real%20Madrid%20vs%20Barcelona file:///home/svarkey/Downloads/Begin.Again.2013.1080p.BluRay.x264-SPARKS%5Brarbg%5D file:///home/svarkey/Downloads/K file:///home/svarkey/Downloads/Q file:///home/svarkey/Downloads/Blended.2014.1080p.BluRay.AC3.x264-tomcat12%5BETRG%5D file:///home/svarkey/Downloads/1080p file:///home/svarkey/Downloads/National%20Geographic%20Collection%201 file:///home/svarkey/Downloads/The%20Other%20Woman%20(2014)%20%5B1080p%5D file:///home/svarkey/Downloads/content file:///home/svarkey/Downloads/Samsung%20UHD%20Demo%20Germany%202160p%204K file:///home/svarkey/Downloads/nginx_LB.conf file:///home/svarkey/Downloads/vpn-bb4978cf%20(2).txt file:///home/svarkey/Downloads/vpn-bb4978cf%20(1).txt file:///home/svarkey/Downloads/vpn-bb4978cf.txt file:///home/svarkey/Downloads/client%20(1).ovpn file:///home/svarkey/Downloads/ansible-1.9.1.tar.gz file:///home/svarkey/Downloads/tcping-1.3.5.deb file:///home/svarkey/Downloads/export-TaxonomyNode-1429868838244.csv file:///home/svarkey/Downloads/export-TaxonomyNode-1429720212633.csv file:///home/svarkey/Downloads/export-TaxonomyNode-1429717836216.csv file:///home/svarkey/Downloads/KBVF15002101.pdf file:///home/svarkey/Downloads/subscriber_report_2015-04-16-00-05-01.csv file:///home/svarkey/Downloads/nohup.out file:///home/svarkey/Downloads/export-Subscriber-1429112307911.csv file:///home/svarkey/Downloads/CentOS-7-x86_64-Minimal-1503-01.iso file:///home/svarkey/Downloads/CentOS-6.3-x86_64-minimal.iso file:///home/svarkey/Downloads/Product%20comparison.PDF file:///home/svarkey/Downloads/VOR14341424.pdf file:///home/svarkey/Downloads/Bitstream%20Service%20IPM%20v34%20unmarked%2023122013.pdf file:///home/svarkey/Downloads/oc.html file:///home/svarkey/Downloads/Response%20Codes_Updated.pdf file:///home/svarkey/Downloads/Embedded%20Team%20performance%20-%20End%20Sprint%2027-01%20to%2016-02.xlsx file:///home/svarkey/Downloads/MTN%20Front%20Row%20Terms%20and%20Conditions%20(amended%20-%20clean)%2020.3.2015.DOC file:///home/svarkey/Downloads/000844143.xml file:///home/svarkey/Downloads/ideaIC-14.1.tar.gz file:///home/svarkey/Downloads/DNSBench.exe file:///home/svarkey/Downloads/package_en.xls file:///home/svarkey/Downloads/ASUSWebStorageRemoteDrive2.1.1.259.exe file:///home/svarkey/Downloads/client.ovpn file:///home/svarkey/Downloads/openvpn.txt file:///home/svarkey/Downloads/digihost-4.1.18-SNAPSHOT.pom file:///home/svarkey/Downloads/2015-03-13%2008.56.43.jpg file:///home/svarkey/Downloads/2015-03-13%2008.55.16.jpg file:///home/svarkey/Downloads/2015-03-13%2008.57.41.jpg file:///home/svarkey/Downloads/KBVF14127966.pdf file:///home/svarkey/Downloads/VOR14313142.pdf file:///home/svarkey/Downloads/INV5401741_27368-C0.pdf file:///home/svarkey/Downloads/Payslip%200047%20(31-01-2015).pdf file:///home/svarkey/Downloads/Payslip%200047%20(28-02-2015).pdf file:///home/svarkey/Downloads/Elephants%20Dream%20H.264%20720p.zip file:///home/svarkey/Downloads/Big%20Buck%20Bunny%20H.264%20720p.zip file:///home/svarkey/Downloads/spring-tool-suite-3.6.3.SR1-e4.4.1-linux-gtk-x86_64.tar.gz file:///home/svarkey/Downloads/ABC%20Studios.docx file:///home/svarkey/Downloads/SDP%20Service%20Integration%20FRS_Discover%20Digital_v1.4.docx file:///home/svarkey/Downloads/jdk-8u31-linux-x64.tar.gz file:///home/svarkey/Downloads/read-file.exe file:///home/svarkey/Downloads/SanchuVarkey_Review_Jan_2015.docx file:///home/svarkey/Downloads/assets.csv file:///home/svarkey/Downloads/-Instructions-for-using-the-NIST-authenticated-Network-Time-Protocol-NTP-server.pdf file:///home/svarkey/Downloads/Review%20Template.docx file:///home/svarkey/Downloads/Dollar%20Malayalam%20Full%20Movie%20High%20Quality(ipad).mp4 file:///home/svarkey/Downloads/ubuntu-12.04.5-desktop-amd64.iso file:///home/svarkey/Downloads/ubuntu-12.04.5-desktop-i386.iso file:///home/svarkey/Downloads/Instant%20AngularJS%20Starter%20%5BeBook%5D.pdf file:///home/svarkey/Downloads/Digisoft.tv%20Holiday%20Request%20Form%20(1).doc file:///home/svarkey/Downloads/Digisoft.tv%20Holiday%20Request%20Form.doc 
sudo hdparm -I /dev/sdb1
lshw -short -C disk
sudo lshw -short -C disk
mv -rvf * /svarkey/
mv -vf * /svarkey/
mv -v /home/svarkey/Downloads/*  /svarkey/
sudo mv -v /home/svarkey/Downloads/*  /svarkey/
df -h
ping frontrowsdp.digisoft.tv 
ping mtnfrontrow.discoverdigital.co.za
cd ~
du -hsx * | sort -rh | head -10
du -hsx *
mv /var/digihost/remote/keystore/digihost_keystore.jks keystore/
cd keystore/
ls
mvn clean install 
mvn clean install #
mvn clean install 
mvn clean install q -DskipTests
mvn clean install -q -DskipTests
history | tcping
history | grep tcping
history | grep telnet
telnet 212.17.57.102 3980
mvn clean install -q -DskipTests
mvn clean install  -DskipTests
mvn clean install
mvn clean install -Ddefault.key.location=/home/svarkey
mvn clean install -Digihost.default.key.location=/home/svarkey
mvn clean install -Ddigihost.default.key.location=/home/svarkey
telnet 212.17.57.102 3980
telnet 212.17.57.102 
ping 212.17.57.102
telnet 10.42.243.46
ping  10.42.243.46
ping  10.42.243.46 3980
telnet  10.42.243.46 3980
ping 10.42.243.87
telnet 10.42.243.87 3980
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
ssh-vvvv root@192.168.250.211
ssh -vvvv root@192.168.250.211
cd $D
mvn clean install -P appliance -DskipTests

mvn clean install -P appliance -DskipTests#
telnet 10.42.243.46 9080

telnet 10.42.243.46 9080
cd /var/digihost/remote/keystore/
ls
ls -ltr
rm -rvf digihost_keystore.jks 
cp ~/digihost4/config/digihost_keystore.jks .
ls
cp -R ~/digihost4/config/Digisoft .
ls
mysql  --force -u root -prootpw
mysql  --force -u digihost -pdigihost;
mysql  --force -u Digisoft -pDigisoft;
mysql  --force -u root -prootpw
cd $D/scripts
./create-operator.sh
mysql  --force -u Digisoft -pDigisoft;
docker
mysql  --force -u Digisoft -pDigisoft;
./create-
./create-operator.sh
sudo vi /etc/redis/redis.conf 
sudo vi /etc/hosts
sudo service redis restart
sudo service redisd restart
ps -ef | grep redis
sudo service redis restart
sudo service redis-server restart
ps -ef | grep redis
tail -f /var/log/redis/redis-server.log
sudo tail -f /var/log/redis/redis-server.log
sudo vi /etc/redis/redis.conf 

ps -ef | grep redis
redis-cli
redis-server --version
sudo vi /etc/redis/redis.conf 
sudo service redis-server restart
cd digihost4-devops
ps -ef | grep redis
sudo vi /etc/redis/redis.conf 
cd $D
exit
telnet 10.42.243.46 9080
ping 10.42.243.46
telnet 10.42.243.46 9080
exit
df -h 
rm -rvf digihost-4.1.13.5/
df -h
cd ~/SANCHU/
ls
rm -rvf *.*~
cd abc/aws/
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
exit
sudo mv -rvf trunk/ /var/svarkey
sudo mv -vf trunk/ /var/svarkey
sudo du -a /var | sort -n -r | head -n 10
sudo du -a . | sort -n -r | head -n 10
cd ..
ls
cd ..
ls
sudo du -a . | sort -n -r | head -n 10
sudo du -hsx . | sort -rh | head -10
sudo agedu -hsx . | sort -rh | head -10
sudo du -hsx . | sort -rh | head -10
sudo du -a . | sort -n -r | head -n 10
sudo du -ah . | sort -n -r | head -n 100
ssh -vvvv root@192.168.250.211
ssh -v root@192.168.250.211
sftp root@192.168.250.211
scp -r  root@192.168.250.211:/var/digihost/remote/reports/subscriber .
ls
cd subscriber/
ls -ltr
cd ..
mv subscriber/ ~/SANCHU/svarkey
mv subscriber/ ~/SANCHU/svarkey/
cp subscriber/ ~/SANCHU/svarkey
cp -r  subscriber/ ~/SANCHU/svarkey
ssh -v root@192.168.250.211
exit
chown -R 777 svarkey
sudo chown -R 777 svarkey
ls
cd svarkey/
ls
cd SANCHU/abc/aws/
ls
ssh -t  -o "StrictHostKeyChecking no" -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
ssh -t  -o  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
ssh -t  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
vi /home/svarkey/.ssh/known_hosts
sudo vi /home/svarkey/.ssh/known_hosts
ssh -vvvv -t  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
sudo chown -R  svarkey:svarkey /home/svarkey/SANCHU
sudo chown -R  svarkey:svarkey /home/svarkey/SANCHU/abc
ssh -vvvv -t  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
ssh  -t  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
sudo chown -R  svarkey:svarkey /home/svarkey
ssh  -t  -i /home/svarkey/SANCHU/abc/aws/Sanchu_test.pem   ec2-user@54.217.204.16
cd ..
ls
rm -rvf digi-alan/
cd kwivpn13-udp-1194-aroche-digisoft/
sudo openvpn --config kwivpn13-udp-1194-aroche-digisoft.ovpn
exit
chmod +x *.sh
./grant_privilages.sh 
ifconfig -a
redis-cli
exit
mysql  --force -u Digisoft -pDigisoft;
exit
sftp  root@188.166.84.78
exit
cat  cat ~/.ssh/id_rsa.pub
ssh root@188.166.84.78
ping 10.42.243.58
traceroute 10.42.243.58
nslookup 10.42.243.58
ssh root@188.166.84.78
ping sanchutest.digitalocean.com
ping 196.11.243.43
sudo route -n
ping 169.254.0.0
ping 172.18.25.1
ssh root@188.166.84.78
tracetoute 196.11.243.43
traceroute 196.11.243.43
nslookup 196.11.243.43
traceroute 196.11.243.43
ip route get 196.11.243.43
route -n
ip route get 196.11.243.43
route -n
cd  $D
./deploy.sh 
./deploy.sh 1
./deploy.sh 2
./deploy.sh
ssh root@10.42.242.106
ssh-copy-id root@10.42.242.106
exit
banner PORT FORWARD
test
ssh-copy-id root@10.42.242.106
ssh  root@10.42.242.106
sudo service rundeck status
pwd
ssh-copy-id root:10.42.242.58
ssh-copy-id root@10.42.242.58
ansible-playbook -i inventories/local devops.yml -vvvvvv
ssh-copy-id root@10.42.242.58
ssh root@10.42.242.58
ansible-playbook -i inventories/local devops.yml -vvvvvv
ssh root@10.42.242.58
ansible-playbook -i inventories/local devops.yml -vvvvvv
ssh root@10.42.242.58
exit
history | ssh
sudo service rundeck install 
sudo apt-get install rundeck
ansible-playbook -i inventories/local devops.yml 
ssh-copy-id root@10.42.242.106
ssh-copy-id root@10.42.242.58
ansible-playbook -i inventories/local devops.yml 
cat /home/svarkey/dev/code/digihost4-devops/ansible/devops-server

ls
ansible-playbook -i inventories/local devops.yml 
ssh  root@10.42.242.106
ssh  root@10.42.242.58
ssh-copy-id root@10.42.242.58
ansible-playbook -i inventories/local devops.yml 
ssh-copy-id root@10.42.242.58
ssh root@10.42.242.58
ansible-playbook -i inventories/local devops.yml 
ansible-playbook -i inventories/local devops.yml -vvvvv
scp -r root@10.42.242.58:/var/rundeck/projects/IrisServer /home/svarkey/dev/code/digihost4-devops/ansible/devops-server/roles/devops/templates
scp -r root@10.42.242.58:/var/rundeck/projects /home/svarkey/dev/code/digihost4-devops/ansible/devops-server/roles/devops/templates
cd $D
mvn clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
cp DigiHost-4.1.20-SNAPSHOT20150508135223.noarch.rpm ~/SANCHU/IrisServer
ssh  root@10.42.242.58
cat ~/.ssh/id_rsa.pub
ssh root@188.166.84.78
ssh stefan@188.166.84.78
cd $D
mvn clean install -P appliance -DskipTests#
mvn clean install -P appliance -DskipTests
cd digihost-package/digihost-package-appliance/target/rpm/DigiHost-noarch/RPMS/noarch/
cp DigiHost-4.1.20-SNAPSHOT20150508150718.noarch.rpm ~/SANCHU/IrisServer/
history | ssh
history | grep ssh
ssh root@10.42.242.58
ssh root@188.166.84.78
pwd
ssh  root@10.42.243.98
