FROM dmisdani/arm-odoo:8.0

ADD openerp-server.conf /opt/openerp_8/odoo/conf/
ENTRYPOINT /opt/openerp_8/odoo/openerp-server -c /opt/openerp_8/odoo/conf/openerp-server.conf
