# docker-opensimulator

Docker container for [OpenSimulator 0.8.2.1][3]

"OpenSimulator is an open source multi-platform, multi-user 3D application server. It can be used to create a virtual environment (or world) which can be accessed through a variety of clients, on multiple protocols. It also has an optional facility (the Hypergrid) to allow users to visit other OpenSimulator installations across the web from their 'home' OpenSimulator installation. In this way, it is the basis of a nascent distributed Metaverse."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 18.04 use the commands:

    sudo apt-get update
    sudo wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    docker run -d -p 9000:9000 -p 9000:9000/udp --name opensimulator quantumobject/docker-opensimulator
 
## For the first configuration :

    docker exec -it container_id after_install

Them respond the questions relate to virtual word : 

 - New region name []:     ==> need to entry region name that you want for it .(need to remember it).

 - RegionUUID [29923331-dddd-4acc-a3d8-46d3c129b6e3]:     ==> press enter key to keep the same.

 - Region Location [1000,1000]:                           ==> press enter key to keep the same.

 - Internal IP address [0.0.0.0]:                         ==> press enter key to keep the same.

 - Internal port [9000]:                                  ==> press enter key to keep the same.

 - Resolve hostname to IP on start (for running inside docker) [False]:  ==> press enter key to keep the same.

 - External host name [SYSTEMIP]:   ==> need to entry the external ip or your http address don't include the port.

 - New estate name [My Estate]:     ==> press enter or change it. 

 - Estate owner first name [Test]:  ==> change or enter for default Test (need to remember it).

 - Estate owner last name [User]:   ==> change or enter for default User (need to remember it).

 - Password:                       ==> remember it for login (need to remember it).

 - Email:                          ==> ..... 

 - User ID [6edd775a-8c1e-4a43-ad16-36df2af3ea0c]:  ==> press enter key to keep the same.

After some process it will show:

Region (.....) # 

 - 'quit' command to continue.


## Use viewer to check the virtual world create by OpenSimulator:

Firestornm viewer [https://www.firestormviewer.org/os-operating-system/][6]

To add your Opensimulator at Menu Viewer==> Preferences ==> Opensim ==> Grid Manager

Where:

 - grid name ==> it will be region name

 - login URL ==>  http://external_ip:9000/  

 - login page ==> http://external_ip:9000/?method=login

Everything else no important at this moment. Press apply and then use info to log in.

if running container in your own local computer you can directly used `Grid: localhost` without adding by Menu preferences

## More Info

About OpenSimulator [www.opensimulator.org][1]

To help improve this container [quantumobject/docker-opensimulator][5]

For additional info about us and our projects check our site [www.quantumobject.org][7]

[1]:http://www.opensimulator.org/
[2]:https://www.docker.com
[3]:http://opensimulator.org/wiki/Download
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-opensimulator
[6]:https://www.firestormviewer.org/os-operating-system/
[7]:https://www.quantumobject.org/
