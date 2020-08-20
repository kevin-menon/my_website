mkvirtualenv my_website
sudo apt update
sudo apt install postgresql postgresql-contrib python3-dev libpq-dev -y
pip3 install -r requirements.txt
sudo -i -u postgres
createuser --createdb --pwprompt django_user
createdb my_website

python manage.py makemigrations
python manage.py migrate
