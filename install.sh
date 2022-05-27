sudo apt update

# Install GPIO Zero
sudo apt install python3-gpiozero -y

# Install pip for python3
sudo apt install python3-pip -y

# Install pigpio for hardware PWM support
# Please see: http://abyz.me.uk/rpi/pigpio/download.html
cd /tmp
wget https://github.com/joan2937/pigpio/archive/master.zip
unzip master.zip
rm master.zip
cd pigpio-master
make
sudo make install

# Install mjpg-streamer to stream UVC camera
wget https://github.com/jacksonliam/mjpg-streamer/archive/master.zip
unzip master.zip
rm master.zip
cd mjpg-streamer-master/mjpg-streamer-experimental
sudo apt-get install cmake libjpeg9-dev -y
sudo apt-get install gcc g++ -y
make
sudo make install

cd /tmp
wget https://github.com/nknytk/built-onnxruntime-for-raspberrypi-linux/raw/master/wheels/bullseye/onnxruntime-1.11.1-cp39-cp39-linux_armv7l.whl
pip3 install onnxruntime-1.11.1-cp39-cp39-linux_armv7l.whl

pip3 install -r requirements.txt
