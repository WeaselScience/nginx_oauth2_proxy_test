Allows to connect [oauth2_proxy](https://github.com/bitly/oauth2_proxy) to a backend using their example [nginx approach](https://github.com/bitly/oauth2_proxy#configuring-for-use-with-the-nginx-auth_request-directive).

To use it, provide the following environment variables when starting the image:
* `OAUTH2_PROXY_NGINX_PROXY_URL` - the URL at which this container can access the running oauth2_proxy instance. Make sure it's full and contains the protocol and the port number.
* `OAUTH2_PROXY_NGINX_BACKEND_URL` - the URL to which authenticated requests will be proxied. Again, make sure to include protocol and port number.