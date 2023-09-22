if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeamKazukai/wednesday-filter-openai.git /wednesday-filter-openai
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /wednesday-filter-openai
fi
cd /wednesday-filter-openai
pip3 install -U -r requirements.txt
echo "𝙎𝙩𝙖𝙧𝙩𝙞𝙣𝙜 wednesday....🧞‍♂️"
python3 bot.py
