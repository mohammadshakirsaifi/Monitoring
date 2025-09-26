#  What is Nagios
Nagios is an open-source monitoring tool that helps you monitor systems, networks, and infrastructure. It alerts you when things go wrong and again when they get better. Nagios can monitor:
- Server health (CPU, memory, disk usage)
- Network services (HTTP, SMTP, FTP, SSH, etc.)
- Applications
- Log files
- Custom metrics via plugins or scripts

---

## 🧠 Core Concepts of Nagios

| Component          | Description                                                       |
|--------------------|-------------------------------------------------------------------|
| **Nagios Core**    | The base engine responsible for scheduling checks and sending notifications. |
| **Plugins**         | Small executables or scripts that check the status of services and hosts.   |
| **NRPE/NCPA/NSClient++** | Agents that allow remote monitoring of services on other servers.          |
| **Web Interface**   | UI to view the status of services, hosts, alerts, logs, etc.                 |
| **Configuration Files** | Define what to monitor, how, and what actions to take.                   |

---

## ✅ Basic Features

- Alerts and notifications (via email, SMS, scripts)
- Performance data graphing (with addons like PNP4Nagios or Grafana)
- Integration with other tools (like Ansible, Prometheus, etc.)
- Highly customizable

---

## 🔧 How to Use Nagios in a Project (To Its Fullest)

### 1. Monitor Everything That Matters
- **Servers:** CPU, memory, load, disk usage
- **Services:** Web servers, databases, APIs, cache layers
- **Applications:** Custom checks for logs, app health endpoints
- **Networks:** Ping latency, bandwidth, port availability
- **Security:** Logins, firewall status, SSL expiry
- **Processes:** Monitor critical processes running

### 2. Use Plugins Effectively
- Leverage the huge collection of existing plugins from [Nagios Exchange](https://exchange.nagios.org/)
- Write custom plugins in Bash, Python, Perl, etc., for app-specific checks.

Example plugin in bash:

```bash
#!/bin/bash
if pgrep myapp > /dev/null
then
  echo "OK - myapp is running"
  exit 0
else
  echo "CRITICAL - myapp is NOT running"
  exit 2
fi
```
 ### 3. Use Remote Agents

- Use NRPE or NCPA to monitor remote Linux/Windows servers.
- NCPA is newer and supports REST API-based checks.

4. Alerting & Notifications

- Set up notification escalations (e.g., notify Level 1 first, escalate to Level 2 after X mins).
- Integrate with Slack, PagerDuty, Microsoft Teams, etc., via webhooks or scripts.
- Customize thresholds (warning/critical) for your environment.

### 5. Performance Data and Graphing
- Nagios itself doesn’t graph, but you can add:
 - PNP4Nagios – RRDTool-based graphing
 - Grafana + InfluxDB/Prometheus – for modern dashboards

### 6. Automate Config Management

- Nagios config is file-based (text). You can:
  - Use Ansible/Chef to push configurations
  - Use templating tools like NagiosQL or NConf for GUI-based config generation

### 7. Scale Nagios (Advanced Usage)

- If your project grows big:
  - Use Mod-Gearman to distribute checks across multiple worker nodes.
  - Use Nagios XI (paid) for enterprise features and scalability.
  - Use NRDP (Nagios Remote Data Processor) for passive check submission.

### 8. Security & Best Practices

- Use HTTPS for web interface
- Secure remote agents with firewalls and SSL
- Limit access to sensitive config files

## 📌 Summary: Using Nagios to the Max

| **Area**       | **How to Maximize**                                      |
|----------------|----------------------------------------------------------|
| **Coverage**       | Monitor all layers (infra, services, apps, logs)         |
| **Customization**  | Write plugins, alerts, graphs                             |
| **Alerting**       | Use advanced notification logic and integrations         |
| **Automation**     | Manage configs with code (Ansible, scripts)               |
| **Scalability**    | Use distributed setup if needed                           |
| **Visualization**  | Add graphs and dashboards                                 |

## Common port numbers related to Nagios monitoring services:

| **Service/Protocol**                 |**Default Port Number**| **Description**                       |
| ------------------------------------ | --------------------- | ------------------------------------- |
| HTTP                                 | 80                    | Standard web traffic                  |
| HTTPS                                | 443                   | Secure web traffic (Nagios Web UI)    |
| NRPE (Nagios Remote Plugin Executor) | 5666                  | Remote checks on Linux/Unix hosts     |
| NCPA (Nagios Cross-Platform Agent)   | 5693 (default)        | Remote monitoring agent with REST API |
| NSClient++                           | 12489 (default)       | Windows monitoring agent              |
| SSH                                  | 22                    | Secure shell access                   |
| SMTP                                 | 25                    | Email sending (for alerts)            |
| SNMP                                 | 161                   | Network monitoring protocol           |





