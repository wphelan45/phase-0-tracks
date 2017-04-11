1. Key design philosophies of Linux:
	-Small is beautiful -> Means that smaller data packets run better, whether it's a program or something else.
	-Each program does one thing well -> Means different programs do a specific task and only that task in order to run smoothly.
	-Prototype as soon as possible -> 
	-Choose portability over efficiency
	-Store data in flat text files
	-Use software leverage
	-Use shell scripts to increase leverage and portability
	-Avoid captive user interfaces
	-Make every program a filter

2. A virtual private server aka VPS is a server that is not physicall attached to a local computer but is accessed/attached to a local computer via the internet. 
Textbook definition of a VPS -> Virtual machine sold as a service by an Internet hosting service. A VPS runs its own copy of an operating system and customers have administrative access to that operating system.
Advantages of a VPS -> Less expensive than using a physical server. Have more control over virtual server than with shared hosting. Plans are scaleable as you get more web traffic and deadicated support staff. 

3. It is a bad idea to always run a VPS as a root user because your server can become compromised by a hacker if you install a malicious program. That hacker now has root privileges. It is easy to wipe entire directories or other important information.