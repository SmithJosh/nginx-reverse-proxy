# nginx-reverse-proxy

## Using

This docker image takes 2 optional arguments:
- REMOTE_HOST
-- This defaults to 'localhost' if unprovided
- REMOTE_PORT
-- This defaults to '8993' if unprovided

### NOTE:
After running the container following the example below, you will want to check what port got assigned to your machine for PAT to occur (`docker ps -a`).
Otherwise, you can statically define this by using the argument `-p 8443:8443` instead of including `-P` for automatic PAT assignments.

### Example:

```
~
matthew.bates@LinkMJB🍺 $ docker run -e REMOTE_HOST=jenkins.codice.org -e REMOTE_PORT=443 -itP registry.phx.connexta.com:5000/devops/nginx-reverse-proxy:latest
...Generating SSL certificates
Generating a 2048 bit RSA private key
.................................+++
.......................................................................................................................................................................+++
writing new private key to '/etc/nginx/cert.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:US
State or Province Name (full name) [Some-State]:AZ
Locality Name (eg, city) []:Phoenix
Organization Name (eg, company) [Internet Widgits Pty Ltd]:Connexta
Organizational Unit Name (eg, section) []:allyourbateses
Common Name (e.g. server FQDN or YOUR name) []:linkmjb.local
Email Address []:matthew.bates@connexta.com
...Setting up as reverse proxy to jenkins.codice.org:443
...Running nginx
172.17.0.1 - - [16/May/2018:21:24:32 +0000] "GET / HTTP/1.1" 200 54.88.158.46:443 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/css/layout-common.css HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/css/responsive-grid.css HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/scripts/yui/animation/animation-min.js HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/css/color.css HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/scripts/behavior.js HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/scripts/prototype.js HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/css/style.css HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
172.17.0.1 - - [16/May/2018:21:24:33 +0000] "GET /static/ad4c7de0/scripts/yui/container/assets/container.css HTTP/1.1" 200 54.88.158.46:443 "https://localhost:32797/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" "-"
...
...
...
```
