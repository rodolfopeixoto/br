LOCAL_IP="$(ifconfig eth0 | grep "inet " | awk -F'[: ]+' '{ print $4 }')" \
SELENIUM_URL=http://firefox-browser:4444 \
RAILS_ENV=test \
rspec