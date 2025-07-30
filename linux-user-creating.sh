sudo adduser jenkins-user


sudo mkdir -p /home/jenkins-user/.ssh

sudo vi /home/jenkins-user/.ssh/authorized_keys


copy that public key and paste into this 
Paste the public key from old server (/home/jenkins-user/.ssh/authorized_keys) here.

Save the file.

sudo chown -R jenkins-user:jenkins-user /home/jenkins-user/.ssh
sudo chmod 700 /home/jenkins-user/.ssh
sudo chmod 600 /home/jenkins-user/.ssh/authorized_keys


Step 2: Open sudoers file safely:
Use visudo (recommended editor to avoid syntax mistakes):

bash
Copy
Edit
sudo visudo

It will open a file in the terminal.

🔹 Step 3: Add this line at the bottom:
bash
Copy
Edit
jenkins-user ALL=(ALL) NOPASSWD:ALL

Step 4: Save and exit (in nano: Ctrl+O, Enter, then Ctrl+X)


sudo usermod -aG sudo jenkins-user

jenkins-user created	✅
Public key copied	✅
Sudo without password	✅ Now added using visudo