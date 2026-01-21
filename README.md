# 🖥️ Bash Dashboard Tool

A terminal-based dashboard that aggregates essential utilities into a single interactive menu. Built for Git Bash (Windows) and Linux environments.

## 🚀 Features

This tool provides an interactive menu with the following modules:

1.  **Weather Checker**:
    * Fetches real-time weather data for any city using the `wttr.in` API.
    * Displays Temperature, Wind Speed, and Weather Conditions.
    * Includes a retry loop for invalid inputs and a 3-try limit.
2.  **System Info**:
    * Displays current disk usage and available memory.
3.  **Network Info**:
    * Checks internet connectivity status (Online/Offline).
    * Retrieves your Public IP address (using `ifconfig.me`).
4.  **Interactive Menu**:
    * Clean interface with loop-back functionality (returns to menu after tasks).

## 📋 Prerequisites

* **Bash Terminal**:
    * **Windows**: [Git Bash](https://git-scm.com/downloads) (Recommended) or WSL.
    * **Linux/macOS**: Standard terminal.
* **Curl**: Used for fetching weather and IP data (usually pre-installed).

## 🛠️ Installation & Setup

1.  **Clone or Download** this repository to your local machine.
2.  **Open your terminal** and navigate to the project folder.
3.  **Make the scripts executable**:
    This step is crucial. It gives the computer permission to run your code.
    ```bash
    chmod +x dashboard.sh weather.sh system_info.sh network_info.sh
    ```

## ▶️ Usage

Run the main menu script to start the application:

```bash
./dashboard.sh
```

## 📁 File Structure
Rise_Academy/
|__weather_info/
    |--dashboard.sh
    |--netinfo.sh
    |--sysinfo.sh
    |--weather.sh
    |__example/
        |--dashboard tool.png
        |--netinfo.png
        |--sysinfo.png
        |--weather.png