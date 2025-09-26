# Nagios Core Starter Setup

This bundle contains starter configuration files and custom scripts to get Nagios Core running quickly.

## 📂 Folder Structure

```
nagios-setup/
├── etc/
│   ├── nagios.cfg
│   ├── objects/
│   │   ├── localhost.cfg
│   │   ├── contacts.cfg
│   │   └── commands.cfg
├── libexec/
│   ├── notify_slack.sh
│   └── check_disk_usage.sh
```

## 🚀 Deployment Steps

1. Extract the zip file:
```bash
unzip nagios-setup.zip -d ~/nagios-setup
```

2. Copy configs and scripts into Nagios directories:
```bash
sudo cp -r ~/nagios-setup/etc/* /usr/local/nagios/etc/
sudo cp ~/nagios-setup/libexec/*.sh /usr/local/nagios/libexec/
```

3. Make scripts executable:
```bash
sudo chmod +x /usr/local/nagios/libexec/*.sh
```

4. Verify Nagios configuration:
```bash
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
```

5. Restart Nagios:
```bash
sudo systemctl restart nagios
```

6. Access the web UI:
```
http://<your-server-ip>/nagios/
```
Login with the `nagiosadmin` user you created during installation.

## 🔔 Alerts

- **Email alerts** are configured in `contacts.cfg` → update your email address.  
- **Slack alerts** use `notify_slack.sh`. Replace the webhook URL with your own in the script.

## 🧩 Custom Plugins

- `check_disk_usage.sh` monitors root partition usage.  
- Add more plugins in `/usr/local/nagios/libexec/` and reference them in `commands.cfg`.

## New Plugin scripts (MySQL, HTTPS, CPU load)
### 📂 File Placement Guide
#### 1. Nagios Configuration Files
- Go to your Nagios config directory (usually /usr/local/nagios/etc/).
- Main config:
 `/usr/local/nagios/etc/nagios.cfg`
(already in place from install, no change needed)

- Objects directory:
`/usr/local/nagios/etc/objects/`

- Place or update these files:

`hosts.cfg` → defines monitored hosts

`services.cfg` → defines monitored services (includes new MySQL, HTTPS, CPU load checks)

`commands.cfg` → defines custom check commands (check_mysql, check_https, check_cpu_load)

`contacts.cfg` → notification settings (email/Slack)

#### 2. Plugins / Custom Scripts

- Go to the Nagios plugins directory (default /usr/local/nagios/libexec/).

- Add the custom scripts below, make them executable:
```bash
sudo cp check_mysql.sh /usr/local/nagios/libexec/
sudo cp check_https.sh /usr/local/nagios/libexec/
sudo cp check_cpu_load.sh /usr/local/nagios/libexec/

sudo chmod +x /usr/local/nagios/libexec/check_*.sh
```
#### 3. Example Custom Plugin Scripts
```bash
check_mysql.sh
check_https.sh
check_cpu_load.sh
```
#### 4. Apply and Restart
```bash
# Verify config
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

# Restart Nagios
sudo systemctl restart nagios
```
---

## 🌱 Next Steps Roadmap

- Here are some ideas to grow your Nagios Core monitoring setup over time:

| Goal | What to Do |
|------|------------|
| Monitor remote servers | Install **NRPE** or **NCPA** agents on other Linux/Windows servers. |
| Monitor applications | Add plugins for MySQL, PostgreSQL, Nginx, Apache, Docker, Kubernetes, etc. |
| Centralize metrics | Export Nagios performance data to **InfluxDB** or **Prometheus**, then visualize in **Grafana**. |
| Automate configs | Use **Ansible**, **Puppet**, or **Chef** to push Nagios config files at scale. |
| Security hardening | Enable **HTTPS** for the Nagios UI, restrict access by IP, and enforce stronger Nagios passwords. |
| Advanced notifications | Integrate with **PagerDuty**, **Microsoft Teams**, **OpsGenie**, or extend Slack alerts. |
| Scalability | Set up **distributed monitoring** (multiple Nagios workers reporting to a central Nagios server). |

---

Happy Monitoring 🎉
