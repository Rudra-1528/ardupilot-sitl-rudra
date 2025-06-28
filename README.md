# ArduPilot SITL Setup – Rudra

This project contains my custom setup to simulate ArduPilot using SITL (Software-in-the-Loop) with MAVProxy and QGroundControl (QGC).

## 🚀 What’s Included

- ✅ `run_sim.sh`: My custom launch script
- ✅ `tcp5760.parm`: Port configuration for SITL
- ✅ Instructions to run and connect QGC

---

## 💻 Requirements

- Ubuntu via WSL (or native)
- ArduPilot cloned in `~/ardupilot`
- MAVProxy installed (`pip install MAVProxy`)
- QGroundControl installed on Windows

---

## 🔧 How to Run

### Terminal 1 – Start SITL
```bash
cd ~/ardupilot
./build/sitl/bin/arducopter -w --model quad --defaults=tcp5760.parm
