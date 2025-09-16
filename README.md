# Cheating Detection Model 

This project demonstrates a **cheating detection model** built with Bash scripting to monitor suspicious activity in a Linux environment.  
It was developed as part of the OMIS107 course by Saanvi Agrawal and Madison Jones.  

## 🚨 Features
- **IP Address Monitoring**  
  Detects if a student logs in from multiple IP addresses at the same time.  

- **Version Control for Assignments**  
  Tracks each version of a student’s script submission and saves incremental copies for instructor review.  

- **Exam Integrity Checker**  
  Compares student exam files with the instructor’s master version, logging discrepancies to `error.txt`.  

## 📂 Scripts
- `cheating_detection.sh`: Continuously monitors active user sessions and flags multiple IPs.  
- `version_control.sh`: Monitors and archives all versions of student submissions.  
- `exam_monitor.sh`: Detects differences between student and instructor exam files.  

## 🛠️ Tools & Technologies
- Bash scripting  
- Linux commands (`who`, `awk`, `diff`, `wc`)  
- Cron jobs / infinite loops for monitoring  

## 🚀 How to Run
1. Clone the repository  
   ```bash
   git clone https://github.com/<your-username>/cheating-detection-model.git
   cd cheating-detection-model/scripts