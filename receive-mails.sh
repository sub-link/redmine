# @Author: mkoentopf
# @Date:   2017-01-19 11:58:22
# @Last Modified by:   mkoentopf
# @Last Modified time: 2017-01-19 11:59:37

# */5 * * * * root  bash -l /srv/www/redmine/receive-mails.sh

cd /srv/www/redmine

rake -f /srv/www/redmine/Rakefile redmine:email:receive_imap RAILS_ENV=production \
host=mail.sub-link.de username="inca-redmine@sub-link.de" password=qeGni0Fk \
project=inca-mail-tickets allow_override=all tracker=Support status=Neu priority=Normal
