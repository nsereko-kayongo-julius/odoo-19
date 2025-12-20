FROM odoo:19.0

USER root

USER odoo

ENTRYPOINT ["odoo"]
CMD ["--workers=0", "--max-cron-threads=0"]
