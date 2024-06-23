# A Python Calculator

This is a simple app to training my habilities using python fundamentals.

I will create an API using [FastAPI](https://fastapi.tiangolo.com/) to be consumed by another app.

Here's how to run in development mode:

Clone the repository

``` bash
git clone https://github.com/natalia-coelho/python-calculator
```

Run the following command

``` bash
fastapi dev .\app\main.py
```

(To see the documentation, run the app in your local machine and [click here](http://127.0.0.1:8000/docs).)

## DevOps

> By @Bemesko

I'm also working on this project building the DevOps/Infrastructure side of things.

### To Do

- [ ] CI/CD
  - [X] Lint application
  - [X] Run automated tests
  - [X] Build Dockerfile
  - [ ] Push Dockerfile to Dockerhub
  - [ ] Check for vulnerabilities in pipeline
- [ ] Infrastructure
  - [ ] Create Azure resource group
  - [ ] Create free tier web app
- [ ] DevEx
  - [ ] Clean up requirements.txt file
  - [ ] Create docker-compose.yml for local development
- [ ] Documentation
  - [ ] Guide on how to set up the development environment
