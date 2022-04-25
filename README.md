# KALES meets ValetBike

Smith College CSC223: Software Engineering
Starter App for ValetBike project

## Overview of dev environment setup (e.g. updates to _env.rb)

**Updates to Gemfile:**
- `gem leaflet-rails`
- `gem bcrypt`

**Tech Stack**
- Ruby
- Javascript
- Rails
- MySQL
- HTML
- CSS
- Bootstrap

## Instructions for populating database (e.g. a rake task or seed setup)
1. `bundle install`
2. `rake db:drop` (if a previous database has been created or in use)
3. `rake db:create`
4. `rake db:migrate`
5. `rake db:seed`
3. `rackup` or `rails s`

* If using `rackup` open http://localhost:9292 (or http://127.0.0.1:9292) in a browser
* If using `rails s` open http://localhost:3000 (or http://127.0.0.1:3000) in a browser

## Changes since prototype
- The app is functioning!
- Users are able to signup, login, and logout.
- Content is up to date on each page.
- Theme is selected.
- Colors across the site are consistent and reflective of overall theme.
- Logged in users can access the payment page.
- Map is rendering with markers for each station which is pulling from the database.

## Description of MVP functionality

| Feature | Location | Description |
| ---- | ------ | ---------------------- |
| Sign-up | Signup Page | Users submit a form with username and password, creating a new user and saving them in the database. |
| Login | Login Page | Users submit a form with username and password, the database is queried for a user with that username. If a user is found, the password is authenticated, and a new session is created. |
| Logout | Navbar Button | Users click logout, sending a post request to the server to destroy the current session. |
| Map | Map Page | An interactive leaflet map is rendered with markers for each station. Station data displays when users select a marker, which is queried from the database. |
| Google translate | Footer | Users select preferred language using a google drop down button, and the site translates into that language. |
| Payment connection | Payment Page | Users redirect to their Paypal or Venmo login after selecting their preferred membership. |

## Walkthrough for key features

Welcome to KALES' Valetbike! Open up the link in your browser and you'll land on the **welcome page**. If you're hoping to use Valetbike as a non-english reader or to practice your foreign language skills, select your preferred language at the bottom of the page. Learn about Valetbike and the KALES team members on the **about page**. Peep those picrew renderings of the group (courtesy of @hunbloom on Instagram)! Have any questions about the process of Valetbike? Check out the **FAQ page**.

Create an account on the **signup page** to get started. Once you're signed in, check your user information on your **account page**. Your username should be on display.

Now that you're all signed up, there's even more to see. Navigate to the **map page** and interact with the available bike stations. Want to rent a bike? Check out the **pricing page** to view our rates. Select a pricing plan and you'll be directed to the **payment page**. To purchase, select your prefered option and checkout with Paypal. Thank you so much for purchasing a Valetbike membership! The bikes definitely exist! We have a van ;)

Maybe you're accessing Valetbike on a public computer or don't want someone easily accessing your information. Not to worry! You have the option to logout. Thank you for exploring Valetbike! Feel free to access your account again by logging back in (on the **login page**)

## Deployment


## Citations

**Overall**
- https://guides.rubyonrails.org/index.html
​​- https://github.com/AnyKeyOrg/anykey 

**Database**
- https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association
- https://codeamt.medium.com/ruby-hack-a-quick-way-to-update-existing-db-table-in-ruby-on-rails-aef0109e7b22 
- https://edgeguides.rubyonrails.org/active_record_migrations.html 
- https://www.inkoop.io/blog/how-to-update-a-column-directly-in-database-in-ruby-on-rails/
- https://ninjadevel.com/seeding-database-ruby-on-rails/ 

**Frontend**
- https://getbootstrap.com/docs/5.1/getting-started/introduction/
- https://www.w3schools.com/jquery/event_hover.asp 
- https://flexboxfroggy.com/
- https://picrew.me/image_maker/626197 

**Controllers**
- https://jaryl.medium.com/disciplined-rails-models-controllers-the-rails-way-bbc940822136
- https://www.tutorialspoint.com/ruby-on-rails/rails-controllers.htm 

**Map**
- https://womanonrails.com/leaflet 
- https://medium.com/@anaharris/how-to-make-a-simple-map-app-using-ruby-on-rails-react-and-leaflet-part-2-frontend-9ae6aa3e08d4 
- https://stackoverflow.com/questions/62968395/ruby-on-rails-accessing-database-values-for-javascript-file
- https://leafletjs.com/index.html 
- https://rubygems.org/gems/leaflet-rails/versions/1.7.0 

**Login**
- https://3rd-edition.railstutorial.org/book/log_in_log_out
- https://mdbootstrap.com/docs/standard/extended/login/ 

**Payment**
- https://www.paypal.com/buttons/smart

