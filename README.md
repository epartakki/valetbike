# KALES meets ValetBike

Smith College CSC223: Software Engineering
Starter App for ValetBike project

### Overview of dev environment setup (e.g. updates to _env.rb)

*Updates to Gemfile:*
- `gem leaflet-rails`
- `gem bcrypt`

*Tech Stack*
- Ruby
- Javascript
- Rails
- MySQL
- HTML
- CSS
- Bootstrap

### Instructions for populating database (e.g. a rake task or seed setup)
1. `bundle install`
2. `rake db:drop` (if a previous database has been created or in use)
3. `rake db:create`
4. `rake db:migrate`
5. `rake db:seed`
3. `rackup` or `rails s`

* If using `rackup` open http://localhost:9292 (or http://127.0.0.1:9292) in a browser
* If using `rails s` open http://localhost:3000 (or http://127.0.0.1:3000) in a browser

### Changes since prototype
- The app is functioning!
- Users are able to signup, login, and logout.
- Content is up to date on each page.
- Theme is selected.
- Colors across the site are consistent and reflective of overall theme.
- Logged in users can access the payment page.
- Map is rendering with markers for each station which is pulling from the database.

### Description of MVP functionality

| Feature | Location | Description |
| -- | -- | ---------------------- |
| Sign-up | Signup Page | Users submit a form with username and password, creating a new user and saving them in the database. |
| Login | Login Page | Users submit a form with username and password, the database is queried for a user with that username, if a user is found, the password is authenticate, and a new session is created. |
| Logout | Navbar Button | Users click logout and a post request is sent to the server to destroy the current session. |
| Map | Map Page | An interactive leaflet map is rendered with markers for each station. Station data is displayed when a marker is selected which is queried from the database. |
| Google translate | Footer | Users select preferred language using a google drop down button and the site is translated into that language. |
| Payment connection | Payment Page | Users are redirected to their Paypal or Venmo login after selecting their preferred membership. |

- Sign-up, Users submit a form with username and password, creating a new user and saving them in the database.
- Login, Users submit a form with username and password, the database is queried for a user with that username, if a user is found, the password is authenticate, and a new session is created.
- Logout, Users click a button, sending a post request to destroy the current session
- Interactive map of Nipmuc Notch (station iformation pulled from the database), the map page renders an interactive leaflet map with markers for each station. Station data is queried from the database
- Google translate select language option
- Payment connection to Paypal and Venmo

### Walkthrough for key features

Welcome to KALES' Valetbike! Open up the link in your browser and you'll land on the **welcome page**. If you're hoping to use Valetbike as a non-english reader or someone just practicing their language learning, select your preferred language at the bottom of the page. Learn about Valetbike and the KALES team members on the **about page**. Peep those picrew renderings of the group! 

There are more features to explore. Have any questions about the process of Valetbike? Check out the **FAQ page**. Create an account on the **signup page** to experience Valetbike fully. Once you're signed in, check your user information on your **account page**. Your username should be on display. Click your password to view!

Now that you're all signed up, there's even more to see. Navigate to the **map page** and interact with the available bike stations. Want to rent a bike? Check out the **pricing page** to view our rates. Select a pricing plan and you'll be directed to the **payment page**. Purchase that membership: select your prefered option and checkout with Paypal. Thank you so much for purchasing a Valetbike membership! The bikes definitely exist! We have a van ;).

Maybe you're accessing Valetbike on a public computer or don't want someone easily accessing your information. Not to worry! You have the option to logout. Thank you for exploring Valetbike! Feel free to access your account again by logging back in (on the **login page**)

### Deployment


### Citations
- https://github.com/AnyKeyOrg/anykey
- https://guides.rubyonrails.org/
- https://www.digitalocean.com/community/tutorials/how-to-add-bootstrap-to-a-ruby-on-rails-application
- https://www.digitalocean.com/community/tutorial_series/rails-on-containers
- https://getbootstrap.com/docs/3.4/components/
- https://getbootstrap.com/docs/3.3/getting-started/
- https://stackoverflow.com/questions/42175701/rails-5-google-places-gem-error
- https://jaryl.medium.com/disciplined-rails-models-controllers-the-rails-way-bbc940822136
- https://rubygems.org/gems/leaflet-rails/versions/1.7.0
