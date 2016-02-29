echo "[revenant] Welcome to the juntle!"
echo "[revenant] Install MongoDB.."
apt-get update -y -q
apt-get install curl -y -q
apt-get install git build-essential mongodb -y -q

mkdir -p /data/db
chmod 777 /data/db

echo "[revenant] Installing Nodejs 5.x..."
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-install install -y nodejs
echo "[revenant] Done..."

echo "[revenant] Installing bower, grunt and gulp]"
sudo npm install -g bower grunt-cli gulp-cli

echo "export PORT=3006" >> /home/vagrant/.bashrc
echo "export IP=`hostname -i`" >> /home/vagrant/.bashrc
