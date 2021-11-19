# CircleCI Dockerfile

This project is used to automatically build a Docker image which can be used to run Cypress tests for a Ruby on Rails application on CircleCI.

It uses a base image from CircleCI for Ruby + Node, and then installs additional dependencies for Cypress before uploading the new image to Dockerhub.

A new build will be trigger on every push, as well as an automatic build every Monday at 02:00 to ensure we receive updates for the base image.
