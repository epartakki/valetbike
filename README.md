# KALES meets ValetBike

### Overview of dev environment setup (e.g. updates to _env.rb)

ADD info

### Instructions for populating database (e.g. a rake task or seed setup)
1. `bundle install`
2. `rake db:migrate`
3. `rake import_data:import_station_data`
4. `rackup` or `rails s`

* If using `rackup` open http://localhost:9292 (or http://127.0.0.1:9292) in a browser
* If using `rails s` open http://localhost:3000 (or http://127.0.0.1:3000) in a browser

### Description of prototype functionality
- Bare bones layout (Front-End and Back-End) 
    - Installed Bootstrap
    - Created image folder
    - Set-up controllers
    - Set-up helpers
    - Added and edited models
    - Added layouts
    - Added to routes.rb
    - Set up robots.txt
- Database
    - Added 5 new migrations
    - Set up schema.rb
    - Set up seeds.rb
    - Set up an import_data rake
- Utilize Google Maps and PayPal
    - Opted to using Paypal buttons for our MVP which do not need additional credentials but instead a transfer of code (minimal to non-existent functionality)
    - Google Maps credentials established on Google Cloud, but need to integrate code out of the maps file, and into the html

### Recommended walkthrough steps to observe key features
- Currently, we recommend going through the following files to observe what we have attempted to set-up as we do not have functionality without errors. Our task is to solve this isssue this week, so we can continue implementing our features.

    > - `app/controllers`
    > - `app/map`
    > - `app/models`
    > - `app/views`
    > - `db/`
    > - `payment.html`

### Current error locations:
- `app/models/user.rb`
- `app/controllers/application_controller.rb`
