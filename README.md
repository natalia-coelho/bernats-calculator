# A Python Calculator

This is a simple app to training my habilities using python fundamentals.

I will create an API using [FastAPI](https://fastapi.tiangolo.com/) to be consumed by another app.

**Here's how to run in development mode:**

Clone the repository

``` bash
git clone https://github.com/natalia-coelho/python-calculator
```

Run the following command

``` bash
fastapi dev .\app\main.py
```

(To see the documentation, run the app in your local machine and [click here](http://127.0.0.1:8000/docs).)

**How to test**
- Go to the root app
- Run `pytest` command in the cmd
- Verify if all tests have passed
- Feel free to implement more of them :) 

## DevOps

> By @Bemesko

I'm also working on this project building the DevOps/Infrastructure side of things.

### To Do

- [ ] CI/CD
  - [X] Lint application
  - [X] Run automated tests
  - [X] Build Dockerfile
  - [X] Push Dockerfile to Dockerhub
  - [ ] Check for vulnerabilities in pipeline
  - [ ] Add automatic semver
  - [ ] Update infrastructure with `terraform apply`
- [X] Infrastructure
  - [X] Create Azure resource group
  - [X] Create free tier web app
- [ ] DevEx
  - [X] Clean up requirements.txt file
  - [ ] Create docker-compose.yml for local development
- [ ] Documentation
  - [X] Guide on how to set up the development environment
