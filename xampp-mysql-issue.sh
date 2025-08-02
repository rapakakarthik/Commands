xampp mysql issue - if in xampp mysql not starting on xampp control panel
the issue is because on local machine, there is already a mysql running.
so we need to kill that process use below commands to check that and kill the proecss then xampp mysql 
will work 

use this commands on CMD with administrator  

→ Check if port 3306 is in use.
netstat -ano | findstr :3306

→ Identify which process is using it.
tasklist | findstr <PID> 

→ Kill the process using 
taskkill /F /PID <PID> 

→ Now port is free, XAMPP will work.
Start MySQL in XAMPP 

(Optional) services.msc → Disable other MySQL to avoid conflict next time.