apt-get update

apt-get install python
apt-get install python-pip
apt-get install python-numpy
apt-get install python-scipy
apt-get install python-sklearn
apt-get install pigpio
apt-get install python-pigpio
apt-get install redis-server

pip install flask
pip install celery
pip install redis

if [ ! -d ./modules ]; then
	mkdir ./modules
fi

cd ./modules
git clone https://www.github.com/guyc/py-gaugette.git
