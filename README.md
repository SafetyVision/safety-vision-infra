# SafetyVision Infra

## Prerequisites
Install `docker-compose` using [these instructions](https://docs.docker.com/compose/install/). If you are using Windows/Mac, the easiest way to do this is to install [Docker Desktop](https://www.docker.com/products/docker-desktop).

Install `make` for your shell of choice. If you are using Powershell, run `winget install GnuWin32.Make` and add `C:\Program Files (x86)\GnuWin32\bin` to your `PATH` variable ([Stack Overflow on the subject](https://stackoverflow.com/questions/1618280/where-can-i-set-path-to-make-exe-on-windows))

## Setup

1. Clone [safety-vision-ui](https://github.com/SafetyVision/safety-vision-ui), [safety-vision-platform](https://github.com/SafetyVision/safety-vision-platform), and this repo. When cloning these repos, make them siblings in your directory structure as shown:
```
your-parent-directory
├── safety-vision-infra
├── safety-vision-platform
+── safety-vision-ui
```

2. Build the Docker containers for the platform and the UI using an administrator PowerShell (or use `sudo` on Mac/Linux):
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
![image](https://user-images.githubusercontent.com/47062950/149214195-a0ed756a-b586-4e09-80aa-2c01dce9b7c0.png)

7. Visit http://localhost/api/accounts to verify the backend is running.
![image](https://user-images.githubusercontent.com/47062950/149214073-6876d8a3-dec1-4234-b43a-69e067097d72.png)

8. Shut the application down:
```
make down
```
