FROM odoo:19.0
USER root
COPY ./addons /mnt/extra-addons
USER odoo
ENTRYPOINT ["odoo"]
CMD ["--workers=0", "--max-cron-threads=0"]
