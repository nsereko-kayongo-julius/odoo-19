FROM odoo:19.0

USER root

COPY odoo.conf /etc/odoo/odoo.conf
RUN chown odoo:odoo /etc/odoo/odoo.conf

USER odoo

ENTRYPOINT ["odoo"]
CMD ["-c", "/etc/odoo/odoo.conf", "--workers=0", "--max-cron-threads=0"]
