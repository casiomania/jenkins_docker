### ⚡ Jenkins Docker container

-    Content-Security-Policy (CSP) has been entirely disabled for this Jenkins image via
-    Preinstalled nodejs, newman, newman-reporter-htmlextra and suggested plugins. (see plugins.txt)
```bash
-Dhudson.model.DirectoryBrowserSupport.CSP="".
```

### ⚡ How-to run

```bash
# run in root folder
docker compose up -d
# access in the browser
[127.0.0.1:8080](http://127.0.0.1:8080/)
# find initialAdminPassword
docker logs -f jenkins
```
