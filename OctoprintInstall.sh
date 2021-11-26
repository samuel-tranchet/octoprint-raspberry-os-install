cd ~
sudo apt update
sudo apt upgrade

sudo apt install python3-pip python3-dev python3-setuptools python3-venv git libyaml-dev build-essential

mkdir OctoPrint
cd OctoPrint

python3 -m venv venv
source venv/bin/activate
pip install pip --upgrade
pip install --no-cache-dir octoprint

sudo usermod -a -G tty pi
sudo usermod -a -G dialout pi

wget 
sudo mv octoprint-server.service /etc/systemd/system/octoprint-server.service



cd ~

sudo apt install subversion libjpeg62-turbo-dev imagemagick ffmpeg libv4l-dev cmake

git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental
export LD_LIBRARY_PATH=.
make


cd ~/OctoPrint


wget 
chmod +x octoprint-webcam-start.sh

wget 
sudo mv octoprint-webcam.service /etc/systemd/system/octoprint-webcam.service


sudo systemctl daemon-reload
sudo systemctl enable octoprint-server
sudo systemctl enable octoprint-webcam
sudo systemctl start octoprint-server 
sudo systemctl start octoprint-webcam 