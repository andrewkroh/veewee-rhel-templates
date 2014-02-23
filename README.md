veewee-rhel-templates
=====================

Veewee Templates for Creating Redhat Vagrant Boxes

Requirements
------------
* VirtualBox
* Vagrant
* Veewee

Important
---------
This project does not supply the Redhat ISO or configure any Redhat yum repositories for the VM.

Example Usage
-------------
    # Download the Veewee RHEL template:
    git clone https://github.com/andrewkroh/veewee-rhel-templates.git
    cp -pR veewee-rhel-templates/rhel-server-6.5-x86_64-minimal [your-veewee-install]/templates
    veewee vbox define 'rhel65-minimal' 'rhel-server-6.5-x86_64-minimal'
    veewee vbox build 'rhel65-minimal'
    veewee vbox export 'rhel65-minimal'
     
<br/><br/>

---------------------------------------
    
Windows Notes
-------------

### Requirements
* VirtualBox
* Vagrant
* Ruby 1.9.3-p484
* DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe (extract to /c/Ruby193/DevKit)
* Git Bash

### Configuration
1. Add ruby, vagrant, and virtualbox bin directories to your PATH.
2. Configure DevKit
 1. cd /c/Ruby193/DevKit
 2. ruby dk.rb init
 3. ruby dk.rb.install
    
### Install Veewee from Source
I found that installing from source was the easiest method.

1. git clone https://github.com/jedi4ever/veewee.git
2. cd veewee
3. gem install bundler
4. bundle install
5. alias veewee='bundle exec veewee'

