# ArchiLab Nexus

This is a basic configuration that helps running the ArchiLab Nexus instance
with minimal effort.

## Deployment

Deploy the Docker stack:

```bash
./run.sh
```

## Backup

In order to backup the application data of Nexus run the "Export databases for
backup" task from https://nexus.archi-lab.io/#admin/system/tasks. Then stop the
Docker stack and run the backup script:

```bash
./stop.sh
./backup.sh
```

This will create a compressed tar archive containing the backup in the current
directory.

## Restore

Stop the Docker stack and run the restore script:

```bash
./stop.sh
./restore.sh
```

Backup file must exist in the current directory.
