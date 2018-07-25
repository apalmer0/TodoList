# To do List

This is a to do list app with basic functionality built in.

## Setup

-   Clone the repository. This just makes a local copy of the repo on your computer. Click on the green 'clone or download' button in the top right corner of the page. Copy the value in the field (`git@github.com:apalmer0/TodoList.git`). Within whatever directory you want your app to live, run `git clone git@github.com:apalmer0/TodoList.git`. This will basically 'paste' the app into that directory and initialize git tracking, so you'll be able to track your changes.
-   install gems (`bundle install`)
-   create database (`rake db:create`)
-   run migrations (`rake db:migrate`). Migrations are basically just instructions for how to create/update tables in a database. When you start an application you'll have a database that's set aside for you (that's what `rake db:create` does), but it's completely empty. Our 'migrations' are instructions like 'create a users table' or 'add a column titled `first_name` to the users table' that take our empty database and update it to make it useful.
-   populate database with 'seeds' - these are just resources I've hardcoded into the app so you've got something to work with (`rake db:seed`)
-   run the rails server (`rails server`)
-   In a separate tab in your terminal, run the rails console (`rails console`) - this will let you work with the database more or less directly, rather than having to go through the app.

## Basic git workflow

-   The default branch is `develop`. There's also a `master` branch. It doesn't really matter with an app this small, but on a business app `master` would be what the entire world uses, and `develop` would be like a step before that, where everything _should_ work properly but maybe just the people in your company will see it so if something's broken it's not the end of the world.
-   Create and switch to ('checkout') a new branch - you should always do work on a different branch. `git checkout -b new-branch-name-goes-here`
-   Do your work, make whatever changes you need.
-   Check out what files git has noticed you've changed: `git status`
-   Add all of those files to what you want to save ('commit') - `git add .` (`.` just refers to the current directory, which is everything. `..` refers to the immediate parent directory)
-   Create a 'commit', which is like a checkpoint for your work, and add a message indicating what you did up to that checkpoint (`git commit -m "did some work"`). The `-m` flag means 'with the following message:'.
-   Push your branch to github `git push origin new-branch-name-goes-here`. `origin` is the name of the 'remote', which is your repo on github.com, as opposed to your local repo, which is just the directory you've got saved on your computer. `git push` pushes the branch named `new-branch-name-goes-here` to the remote named `origin`
-   Create a pull request on github.com: a 'pull request' is a request to get your changes added into the default branch. Usually right after you push your branch you'll see an option appear that asks you if you want to create a pull request with your branch, but if not you can click on the 'branches' link within the code tab, find your branch, and click the 'new pull request' button there.

## Tasks

- [ ] Only return incomplete tasks in the index view
- [ ] Parse the date so it's easier to read (check out `strftime`)
- [ ] Add the ability to complete a task via the item show view
- [ ] Add a 'priority' column to the Item table and render it on the index, show, new/edit forms
- [ ] Add a button in the index to complete a task without having to view the item
- [ ] Add styling to the index view, the form, the show page, etc
