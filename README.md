### Purpose
Demonstrate basic user authentication, including:

* setting data in sessions
* conventional login/logout and /profile endpoints

### Running
1. Clone the repo
2. `rake db:migrate && rake db:create && rake db:seed`
3. `bundle install`
4. `bundle exec shotgun`
5. Open [http://localhost:9393/login](http://localhost:9393/login)
6. Try logging in. Check the `db/seeds.rb` for login creds.
