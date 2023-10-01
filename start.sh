if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Filmymoviechannel/Filmymoviechannel.git /Filmymoviechannel 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filmymoviechannel 
fi
cd /Filmymoviechannel 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
