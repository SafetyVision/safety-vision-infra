# SafetyVision Infra

## Prerequisites
Install `docker-compose` using [these instructions](https://docs.docker.com/compose/install/). If you are using Windows/Mac, the easiest way to do this is to install [Docker Desktop](https://www.docker.com/products/docker-desktop).

Install `make` for your shell of choice.

## Setup

1. Clone [safety-vision-ui](https://github.com/SafetyVision/safety-vision-ui), [safety-vision-platform](https://github.com/SafetyVision/safety-vision-platform), and this repo. When cloning these repos, make them siblings in your directory structure as shown:
```
your-parent-directory
├── safety-vision-infra
├── safety-vision-platform
+── safety-vision-ui
```

2. Build the Docker containers for the platform and the UI:
- `cd` to `safety-vision-platform` and run `make build`
- `cd` to `safety-vision-ui` and run `make setup`

3. `cd` to this repository's directory.

4. Build and run the docker images:
```
make build
make up
```

5. Run the database migrations (if you have issues running this just try again in a few seconds):
```
make migrate
```

6. Visit http://localhost to verify the UI is running.

7. Visit http://localhost/api to verify the backend and database are running.

8. Shut the application down:
```
make down
```
