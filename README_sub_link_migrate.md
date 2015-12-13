Info how I make migration of out redmine from 1.3 to 3.2 version:

Install plugins (just git clone):
```
https://github.com/alexbevi/redmine_knowledgebase
https://github.com/two-pack/redmine_xls_export
```

One plugin is downloaded from here (account is nessesary):
http://www.redminecrm.com/projects/checklist/pages/1

in mysql:
```
drop table tags;
drop table taggings;
```

pack plugings as separate folder
```
tar -xvzf ~/Downloads/plugins.tar ./plugins
```

```bash
edit config/database.yml
bundle exec rake generate_secret_token
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake redmine:plugins:migrate
```
