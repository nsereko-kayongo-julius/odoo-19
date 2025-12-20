FROM odoo:19.0

USER root


USER odoo

# Force Odoo to run in a single process to save RAM
ENTRYPOINT ["odoo"]
CMD ["--workers=0", "--max-cron-threads=0"]
