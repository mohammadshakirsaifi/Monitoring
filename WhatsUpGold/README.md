# WhatsUp Gold Monitoring Tools 
## 🧠 What is WhatsUp Gold?

### WhatsUp Gold (WUG) is a network monitoring and management tool developed by Progress (formerly Ipswitch).
It’s used by IT administrators to monitor the health, performance, and availability of network devices, servers, and applications — all from a single dashboard.

### ⚙️ Key Functions of WhatsUp Gold
| Function                       | Description                                                                                                            |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------------------- |
| **Network Discovery**          | Automatically scans and identifies all devices connected to your network (routers, switches, servers, printers, etc.). |
| **Monitoring**                 | Continuously monitors devices and services for uptime, bandwidth, and performance.                                     |
| **Alerts & Notifications**     | Sends real-time alerts (email, SMS, etc.) when a device or service fails or exceeds thresholds.                        |
| **Reporting & Dashboards**     | Generates detailed reports on device health, availability, and performance trends.                                     |
| **Network Mapping**            | Automatically creates a **topology map** (architecture diagram) showing all devices and their interconnections.        |
| **Cloud & Virtual Monitoring** | Can also monitor AWS, Azure, VMware, and Hyper-V environments.                                                         |

### 🎯 Why We Use WhatsUp Gold

- To ensure network reliability and prevent downtime.
- To detect performance bottlenecks before they impact users.
- To visualize the network structure (through topology or architecture diagrams).
- To plan capacity and troubleshoot faster using real-time metrics.
- To centralize monitoring of diverse systems (on-premise, virtual, or cloud).

# 🛰️ WhatsUp Gold Monitoring Architecture

This document provides a high-level overview of the **WhatsUp Gold (WUG)** monitoring architecture, its core components, and data flow across different layers.

---

## 🏗️ Diagram Layers & Components

### 1. **User & Management Layer**

👤 **IT Admin / NOC Console**
- Accesses the **WhatsUp Gold Web Dashboard**
- Receives alerts via **Email**, **SMS**, or **Web notifications**
- Manages monitored devices and views performance metrics

---

### 2. **WhatsUp Gold Core System**

💻 **WhatsUp Gold Server**
- Central monitoring and management engine  
- Polling engine supports **SNMP**, **WMI**, and **SSH** protocols  
- Includes **Alerting**, **Reporting**, and **Discovery** modules

🗄️ **SQL Database**
- Stores device configurations, status, logs, and performance data  
- Used for reporting and historical trend analysis

🔄 **Flow Monitor / Log Management Add-ons**
- Collects **NetFlow/sFlow/jFlow** traffic data  
- Parses **Syslogs** and **Windows Event Logs** for anomaly detection

---

### 3. **Network Layer**

🌐 **Core Network Devices**
- Includes **Routers**, **Switches**, and **Firewalls**  
- Monitored using **SNMP**, **ICMP**, and **Syslog**

🖥️ **Servers**
- **Windows/Linux** servers monitored via **WMI/SSH**  
- Tracks CPU, Memory, Disk, and Service status

📦 **Applications**
- Monitors **Web**, **Mail**, **Database**, and **Custom** applications  
- Ensures application uptime and performance

☁️ **Cloud Services (Optional)**
- Integrates with **Azure** and **AWS** via APIs  
- Tracks virtual machine and service availability

---

### 4. **Notification & Integration Layer**

🔔 **Alert Notifications**
- Supports **Email**, **SMS**, **Slack**, and **Webhook-based** alerts  
- Configurable thresholds and escalation policies

🔗 **Integrations**
- Integrates with **ServiceNow**, **Microsoft Teams**, and **REST APIs**  
- Enables automated incident management and workflow integration

---

### 🎨 **Visual & Color Plan**

| **Layer**              | **Color** | **Key Components**                                    | **Icon Style**                      | **Description**                                                                             |
| ---------------------- | --------- | ----------------------------------------------------- | ----------------------------------- | ------------------------------------------------------------------------------------------- |
| **User & Management**  | 🟦 Blue   | 👤 **Admin**                                          | User icon                           | Dashboards, Alerts, and Access control for administrators and users.                        |
| **Core System**        | 🟩 Green  | 🖥️ **WhatsUp Gold Server**, 🗄️ **Database**         | Server & Cylinder icons             | Core backend: WUG Server, Database, and Polling Engines managing performance and data.      |
| **Network Layer**      | 🟨 Yellow | 🌐 **Network Devices**, 🖥️ **Servers**, ☁️ **Cloud** | Router/Switch, Server & Cloud icons | Network infrastructure layer: devices, on-prem servers, and cloud systems under monitoring. |
| **Notification Layer** | 🟧 Orange | 🔔 **Alerts**                                         | Bell icon                           | Notifications, alerts, and integrations for real-time event management.                     |

---

## 📊 Example Architecture Diagram (Conceptual)

[ IT Admin / Web UI ]
│
▼
[ WhatsUp Gold Server ]
├── Polling Engine (SNMP/WMI/SSH)
├── Alerting & Reporting
├── SQL Database
└── Flow & Log Add-ons
│
▼
[ Network Devices | Servers | Apps | Cloud ]
│
▼
[ Notifications & Integrations (Email, Slack, ServiceNow) ]


### 🧩 Architecture / Network Diagram Explanation

Here’s a simplified architecture diagram of how WhatsUp Gold works:
            ┌─────────────────────────────┐
            │       User Interface        │
            │ (Web Console / Mobile App)  │
            └─────────────┬───────────────┘
                          │
                          │
            ┌─────────────▼──────────────┐
            │      WhatsUp Gold Server   │
            │ (Core Engine & Database)   │
            ├────────────────────────────┤
            │ Discovery Services         │
            │ Monitoring Services        │
            │ Alerting & Reporting       │
            └─────────────┬──────────────┘
                          │
         ┌────────────────┼────────────────┐
         │                │                │
 ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
 │ Network      │  │ Servers      │  │ Cloud Apps   │
 │ Devices      │  │ (Web, DB)    │  │ (AWS, Azure) │
 │ (Routers,    │  │              │  │              │
 │ Switches, etc│  │              │  │              │
 └──────────────┘  └──────────────┘  └──────────────┘



![](../photos/WhatsUpGold/dashboard.jpg)


## Simple, Integrated Log Management & Archiving
- **WhatsUp Gold Log Management provides easy visibility and management of device log data – all integrated into an easy-to-use, industry-leading interface. You can monitor, filter, search and alert on syslogs or Windows logs for every device in your network while also watching for meta trends like log volume changes. You can archive logs to any storage locations for any retention period to comply with regulatory requirements and preserve historical data.**

![Log Management Add-On](../photos/WhatsUpGold/log-mgmt-add-on.jpg)


### Network Availability and Performance Monitoring
- **WhatsUp Gold is a comprehensive set of network monitoring tools designed for both on-premises and cloud environments.**
![](../photos/WhatsUpGold/NA.jpg)
---

## Intelligent IT Infrastructure Monitoring with WhatsUp Gold
![](../photos/WhatsUpGold/Model.jpg)
---

### More Than Just Network Monitoring Software
##### Discover Your Network
- **WhatsUp Gold’s powerful layer 2/3 discovery results in a detailed interactive map of your entire networked infrastructure. Monitor and map everything from the edge to the cloud including devices, wireless controllers, servers, virtual machines, applications, traffic flows and configurations across Windows, LAMP and Java environments.**
![](../photos/WhatsUpGold/network-discovery.jpg)
---

##### Get Real-time Alerts
- **Ensure optimal performance and availability to meet or beat SLAs. Manage networks, traffic, physical servers, VMs and applications with easy-to-use and customizable maps, dashboards and alerts. Click on any device in WhatsUp Gold to get immediate access to a wealth of related network monitoring settings and reports.**
![](../photos/WhatsUpGold/real-time.jpg)
---

##### Resolve Issues Quickly
- **Intuitive workflows and easy customization help you reduce MTTRs. WhatsUp Gold streamlines network monitoring workflows by letting you initiate management tools directly from the interactive map. Easily switch between physical, virtual, wireless and dependency views to resolve issues quickly.**
![](../photos/WhatsUpGold/resolve-issues.jpg)
---

#### Discover, Map and Monitor Your Network Devices in Minutes with the Network Discovery Tool by WhatsUp Gold
- **Discover everything connected to your network from devices, servers, deployed software, Windows, wireless and virtual infrastructures and more. The WhatsUp Gold's Network Discovery Tool features powerful Layer 2/3 discovery which can be initiated from an IP Range Scan or SNMP Smart Scan of a core router’s Bridge Table to generate a detailed map of your network from top to bottom - so you can focus on keeping it running securely and at peak performance.**
  - Map, inventory, and visualize your network topology and interdependencies
  - Document and track all your IT assets with enhanced inventory discovery
  - Troubleshoot connectivity issues with Layer 2 Trace and IP/ Mac Finder tools
  
### Discover Devices On Your Network
- **The WhatsUp Gold's Network Discovery Software uses a number of innovative Layer 2/3 discovery technologies - including ARP, SNMP, SSH, Virtual Infrastructure Management, IP addressing, ICMP and LLDP in combination with vendor-proprietary mechanisms - to discover everything connected to your network and build a complete and accurate picture of network devices and their port-to-port connectivity.. Full or partial discoveries can be scheduled to run automatically or run on-demand.**
![](../photos/WhatsUpGold/discovered-devices.jpg)
---

### Visualize with Network Maps
- **The WhatsUp Gold Network Discovery Tool auto-generates integrated Layer 2 and 3 network maps that give you full visibility into physical, logical, and virtual connectivity, including IP and VLAN-specific information. It dynamically updates its maps as changes occur in the network. Maps are easy to customize and manipulate so you can view your network the way you want.**
![](../photos/WhatsUpGold/network-map.jpg)
---

### Assign Device Roles and Dependencies
- **At the completion of the discovery process, WhatsUp Gold automatically assigns devices roles that specify what data to collect and remedial actions that are enabled. You can easily modify default device roles and sub-roles or create new ones with the Device Role Editor. The automated network discovery process also identifies dependencies that are marked on the map as directional arrows. With a couple of mouse clicks, dependency data can be used to suppress unnecessary alerts saving valuable troubleshooting time by minimizing false alerts.**

###  Maintain an Accurate Network Inventory
- **WhatsUp Gold provides comprehensive network inventory and configuration information – supporting the reporting/ documentation needs of your internal business process (such as ITIL) and regulatory requirements like PCI DSS, SOX, FISMA and HIPAA. Since you can easily export this information in CSV or Excel formats, your entire team will know exactly what resources are on your network, where they are and how they are connected at all times – even when your network grows, your office moves or datacenter resources get consolidated.**

### Manage Your Network Assets
- Gather, filter and export a wide variety of inventory and configuration information across networking devices and systems.
  - Networking Devices Asset Information: Manufacturer/Model, Serial Number, Hardware/Software/ Firmware Versions, Chassis/Module Inventory, Power Supplies/Fans
  - Configuration Information: Interfaces, Bridge Ports, Switch Ports, VLANs
  - Systems Inventory: All available system component details (CPU, RAM, disks, etc.), OS version & patch information, any installed software packages, support for automatic update of warranty information (Dell and HP) based on integration with their support websites


#### Network Traffic Analysis (NTA)
- **Obtain real-time visibility into network traffic to detect and analyze ongoing issues, minimizing downtime and allowing faster response to performance bottlenecks with WhatsUp Gold’s network monitoring software.**

#### Integrate and Automate with REST API
- **The new WhatsUp Gold REST API offers a powerful suite of calls that let you integrate network monitoring data with other systems and also let you automate a broad range of network monitoring tasks such as adding and removing devices.**


## WhatsUp Gold Add-On Modules
- **These add-on modules integrate seamlessly with WhatsUp Gold to extend the core IT infrastructure monitoring capabilities.**

##### Network Traffic Analysis
- **Network Traffic Analysis delivers detailed and actionable data on network traffic and bandwidth consumption. The WhatsUp Gold NTA module not only monitors overall bandwidth utilization, but also indicates which users, applications, and protocols are consuming the most bandwidth. It supports a wide variety of flow protocols including NetFlow, NSEL, QUIC, sFlow, J-Flow and IPFIX.**

##### Application Performance Monitoring
- **The APM module extends the visibility of WhatsUp Gold to monitor the performance of mission-critical applications like Exchange, SQL Server®, SharePoint®, Dynamics, DNS, IIS, Active Directory®, Hyper-V® and more. Customize definitions of application states and how SLAs are calculated to eliminate false SLA failures.**

##### Log Management
- **WhatsUp Gold Log Management brings device log information to your fingertips. You can gather Windows event logs & syslogs, control and/or visualize them from the map or customizable dashboards and trigger alerts on specified conditions. Configure log searches and export the results automatically or on demand. Archive logs for regulatory compliance or to preserve historic data. Simplify your life when logs become part of your network issue diagnosis process.**

##### Configuration Management
- **WhatsUp Gold’s Network Configuration Management module automates the configuration and change management for routers, switches and firewalls on your network. Archive and audit network configurations and get alerted to configuration changes. Reduce errors and support compliance requirements for HIPAA, SOX, FISMA and PCI DSS and other regulations.**

##### Virtualization Monitoring
- **Virtualization Monitoring is an add-on module that adds the capability to discover, map, monitor, alert and report on both small virtual environments and entire data centers.**

### 🖥️ In Summary
| Feature           | Purpose                                             |
| ----------------- | --------------------------------------------------- |
| **Monitoring**    | Track uptime, performance, and traffic.             |
| **Visualization** | Network topology maps show how everything connects. |
| **Alerts**        | Immediate notifications when something fails.       |
| **Reports**       | Historical and trend data for capacity planning.    |


