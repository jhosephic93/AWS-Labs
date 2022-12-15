# Install apache start and enable the service
sudo yum install -y httpd &&
sudo systemctl start httpd &&
sudo systemctl enable httpd
# Configure index.html
echo '<!doctype html><html><body><h1>Congrats, you built your first Image Builder component!</h1></body></html>' | sudo tee /var/www/html/index.html
