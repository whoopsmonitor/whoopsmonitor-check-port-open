# whoopsmonitor-check-port-open

Check if the port is open on remote server (with netcat).

## Environmental variables

-   `WM_HOST` - Hostname or IP address.
-   `WM_PORT` - Port to check.

## Example

Details of the check in Whoops Monitor configuration tab or for the `.env` file.

```yaml
WM_HOST=127.0.0.1
WM_PORT=22
```

## Output

-   `0` - port is opened
-   `2` - port is not opened

## Build

```sh
docker build -t whoopsmonitor-check-port-open .
```

## Run

```bash
docker run --rm --env-file .env whoopsmonitor-check-port-open
```
