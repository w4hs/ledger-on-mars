#API-LEDGER MARS

### Setup
 
##### Copy the configuration file
```bash
cp config/database.sample.yml config/database.yml
cp config/puma.sample.rb config/puma.rb
cp config/master.sample.key config/master.key
```

##### Setup Database
```bash
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

#### Bundle Install

```bash
bundle install
```

#### Start the Server

```
bundle exec rails s
```

Now open your browser

[Open in Browser](https://localhost:3000)


