# dynamic_dns_updater

This is a simple script to update the dynamic DNS for a domain.
Right now, it only has code for Namecheap Dynamic DNS Updation.

## Usage

```bash
bash namecheap/script.sh
```

## Cronjob

```bash
crontab -e
```

Add the following line to the crontab file:

```bash
0 * * * * cd [full path to this directory] && bash namecheap/script.sh
```

## Namecheap API Key

The Namecheap API key is stored in the `namecheap/.api_key` file.
