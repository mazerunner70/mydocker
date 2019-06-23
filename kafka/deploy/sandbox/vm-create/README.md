# Notes on creating sandbox VM for Kafka

*This is a fresh built Vm not vagrant driven - due to potential security risks of using a box with a fixed 'vagrant' login.*

The builder is in python, but intended to run from command line,but only tested runnig from this directory.

## Generating a new Sandbox VM

### Step 1: Create config file
There is an example.ini which the builder will use by default. There is also a config_init.py file that generates that ini, in case this tool is developed further and the config becomes more complex.
Open up the ini file and make any edits required.

### Step 2: Run the creation script
Using python to create the VM should make it host-agnostic, though this is untested. 
Execute a simple ```./vmcreate.py``` from this directory


## Editing code
Pycharm was used to create the code, and there is a test class ```tests.py``` that unit tests the script.

if using the dpycharm version, run ```./dpycharm-kafka.bash```

