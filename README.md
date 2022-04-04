# KALES meets ValetBike

## Overview of dev environment setup (e.g. updates to _env.rb)
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
    - Edited models
    - Added layouts
    - Added to routes.rb
    - Set up robots.txt
- Database
    - Added 3 new migrations
    - Set up schema.rb
    - Set up seeds.rb
    - Set up an import_data rake
- Utilize Google Maps and PayPal
    - Opted to using Paypal buttons for our MVP which do not need additional credentials but instead a transfer of code (minimal to non-existent functionality)
    - Google Maps credentials established on Google Cloud, but need to integrate code out of the maps file, and into the html

### Recommended walkthrough steps to observe key features
- Currently, we recommend going through the files to observe what we have attempted to set-up as we do not have functionality without errors. Our task is to solve this isssue this week, so we can continue implementing our features.

### Current error locations:
> app/models/user.rb
> app/controllers/application_controller.rb


***
### Old README.md
***

# ValetBike

Smith College CSC223: Software Engineering\
Starter App for ValetBike project

## Environment Configuration
Follow the general steps in the next section to set up your local development environment from scratch. It is essential that you **consult a more detailed guide** that corresponds to your specific type of development machine. Use one of the guides listed below to help you complete the steps for setting up ValetBike on your machine.

* [Install Ruby on Mac (Intel and M1)](https://mac.install.guide/ruby/index.html)
* [Install Ruby on Mac (M1 additional details)](https://github.com/deadroxy/valetbike/blob/master/notes/dev-enviro.md)
* [Install Ruby on Windows 10](https://gorails.com/setup/windows/10)

On Mac it is strongly recommended that you use asdf to install Ruby. On Windows you should set up your environment through the Windows Subsystem for Linux (WSL). The guides above explain how to do so in detail.

***

## General Configuration Steps

As you configure your environment you should **keep a log** where you **write down all the steps you take** and each command you type. You will inevitably run into errors setting up your development environment and maintaining a meticulous log will allow others to help you troubleshoot. 
 
**1. Fork & clone ValetBike repo**
* Click fork in the upper right hand corner of the ValetBike GitHub page
* Then create a local copy of your fork with:
* `git clone https://github.com/<username>/valetbike.git`

**2. Install MySQL 8**
* Download: https://dev.mysql.com/downloads/mysql
* Be sure to select the version that corresponds to your operating system (Intel Mac = x86, M1 Mac = ARM)
* Choose "Use Legacy Password Encryption" when installing
* Make note of the password you set for the root user
* After install make sure you add `/usr/local/mysql/bin` (or equivalent) to your path

**3. Install Ruby 3.0.2**
* Consult one of the guides linked in the previous section
* Use [asdf](https://asdf-vm.com/guide/getting-started.html) on Mac/Linux systems
* Use the [WSL](https://docs.microsoft.com/en-us/windows/wsl) on Windows systems
* Make sure you are using Ruby 3.02 before proceeding:
  * `cd valetbike` then `ruby -v` to check your version

**4. Install essential gems**
* Disable gem docs:
  * `echo "gem: --no-document" >> ~/.gemrc`
* Install Rails 6.1.4:
  * `gem install rails --version 6.1.4`
* Install MySQL gem:
  * `gem install mysql2`
  * Use the `-- --with-opt-dir="$(brew --prefix openssl@1.1)"` flag on M1 Macs
* Install required gems:
  * `bundle install`

**5. Configure database environment variables**
* Add a file called `.env` to your app's root directory
* Ensure that it includes the credentials you setup when installing MySQL:

```shell
MYSQL_USERNAME=root
MYSQL_PASSWORD=YOURPASSWORD
MYSQL_SOCKET=/tmp/mysql.sock              # For Mac
MYSQL_SOCKET=/var/run/mysqld/mysqld.sock  # For Windows
```

**6. Prepare database in MySQL**
* Run either `rake db:create`
* Or `mysql -u root -p` and `CREATE DATABASE valetbike_development;`

**7. Run database migrations**
* `rake db:migrate`

**8. Confirm app runs**
* Launch web server using `rackup` or `rails s`
* If using `rackup` open http://localhost:9292 (or http://127.0.0.1:9292) in a browser
* If using `rails s` open http://localhost:3000 (or http://127.0.0.1:3000) in a browser
* You should see ValetBike welcome page
  



