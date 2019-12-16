To change standard `/var/lib/docker` directory with docker data (volumes, images, ...) you should
alter systemd service config for docker daemon (`/lib/systemd/system/docker.service`) and pass
`--data-root=` parameter to `ExecStart`.
