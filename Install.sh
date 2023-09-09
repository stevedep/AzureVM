wget -N https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip -O /tmp/chromedriver_linux64.zip
unzip -o /tmp/chromedriver_linux64.zip -d /tmp/chromedriver/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub > /home/Steve/Documents/key.txt
sudo -S apt-key add /home/Steve/Documents/key.txt 
echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> sudo -S /etc/apt/sources.list.d/google-chrome.list
sudo -S sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo -S apt-get -y update
sudo -S apt-get -y install google-chrome-stable 
sudo apt install python3-pip
sudo pip3 install virtualenv

mkdir /home/Steve/Documents/demo/
cd /home/Steve/Documents/demo/
virtualenv notebookenv
source /home/Steve/Documents/sourceenv.sh
pip3 install selenium-wire
pip3 install azure-storage-blob
pip3 install pandas
cd ..
#deactivate