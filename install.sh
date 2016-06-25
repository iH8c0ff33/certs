certbot certonly \
  --renew-by-default \
  --email daniele.monteleone.it@gmail.com \
  --text \
  --agree-tos \
  --standalone \
  -d daniele.ml \
  -d mail.daniele.ml \
  -d app.daniele.ml \
  -d git.daniele.ml
cp /etc/letsencrypt/live/daniele.ml/* /var/certs
