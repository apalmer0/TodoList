# To do List

This is a to do list app with basic functionality built in.

## Setup

-   Clone the repository. This just makes a local copy of the repo on your computer. Click on the green 'clone or download' button in the top right corner of the page. Copy the value in the field (`git@github.com:apalmer0/TodoList.git`). Within whatever directory you want your app to live, run `git clone git@github.com:apalmer0/TodoList.git`. This will basically 'paste' the app into that directory and initialize git tracking, so you'll be able to track your changes.
-   install gems (`bundle install`)
-   create database (`rake db:create`)
-   run migrations (`rake db:migrate`)
-   populate database with 'seeds' - these are just resources I've hardcoded into the app so you've got something to work with (`rake db:seed`)
-   run the rails server (`rails server`)
-   run the rails console (`rails console`) - this will let you work with the database more or less directly, rather than having to go through the app.


## Tasks

- [ ] Only return incomplete tasks in the index view
- [ ] Parse the date so it's easier to read (check out `strftime`)
- [ ] Add the ability to complete a task via the item show view
- [ ] Add a 'priority' column to the Item table and render it on the index, show, new/edit forms
- [ ] Add a button in the index to complete a task without having to view the item
- [ ] Add styling to the index view, the form, the show page, etc
