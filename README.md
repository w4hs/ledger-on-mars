#LEDGER MARS

This is only the API

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

### Deployment

##### Copy the deploy environment files

Copy both of any of them that goes with your requirements

```bash
cp config/deploy/staging.sample.rb config/deploy/staging.rb
cp config/deploy/production.sample.rb config/deploy/product.rb
```

* Set your credentials

* Setup your servers
    1. Ubuntu
    2. Postgresql
    3. Nginx
    4. RVM

And run the following commands:

`bundle exec cap <staging/production> deploy`

```bash
bundle exec cap staging deploy

```
