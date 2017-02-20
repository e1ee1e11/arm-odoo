e1ee1e11/arm-odoo:8.0
=====================

This image is forked from odoo_arm application.
https://hub.docker.com/r/dmisdani/arm-odoo/

I fix the DB error while running dmisdani/arm-odoo + zsoltm/postgresql-armhf.

Recently, there is a server error of binding address when running dmisdani/arm-odoo.

So I push my e1ee1e11/arm-odoo:8.0 with correct configuration.

How to use
----------

Here is a quick start by docker-compose:

docker-compose.yml
```
db:
  image: e1ee1e11/postgresql_armhf:9.4.8-1
  environment:
    - POSTGRES_USER=openerp_8
    - POSTGRES_PASSWORD=qwerty
  volumes:
    - ${PWD}/flash/postgres_folder:/media/postgres_folder

web:
  image: e1ee1e11/arm-odoo:8.0
  user: openerp_user
  links:
    - db:db
  volumes:
    - ${PWD}/odoo_addons:/opt/openerp_8/my_addons
  ports:
    - "18069:8069"
```
see also: https://github.com/e1ee1e11/docker/tree/master/armhf/base/postgresql
