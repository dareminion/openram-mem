# NYU Processor Design Memory Generation/Testing

## OpenRAM Guide
[**OpenRam Github**](https://github.com/VLSIDA/OpenRAM)

### Installing OpenRAM

This best done in a Linux terminal, I am using WSL for this Memory Generation. As OpenRAM suggests, using Anaconda is good, however not required. The following documentation will be assuming conda environments. 

Create a new conda environment using `conda create -n <environment_name>`

Enter the conda environment using `conda activate <envrionment_name>`

* Note about Conda
    * When having Conda installed, you may have something called `<base>` show up in the terminal. You can just run `conda deactivate` to deactivate any other environments that are being unused.

After entering the conda environment, install Python by running `conda install python`, this will install the latest version of Python within the Conda Environment that you have. To check if you have Python installed, you can use `conda list` and this will show you a list of packages you have installed in this environment.

Then you can install OpenRAM using `pip install openRAM`. 

### Setting up OpenRAM

OpenRAM operates when you pass it a certain configuration file, following instructions were based off of the *basic usage* of the OpenRAM Documentation. 

Within this Github Repository, there is a file named `test_sram_config.py` this file is taken from OpenRam Repository. You can change everything within this config file, and the most important ones are the first few config lines which tell you how many words, the size of the words, and the number of r/w ports. This file is primarily used for understanding how OpenRam Works, so is not representative of future config files.

To setup OpenRAM, ensure that the proper environment variables for OpenRAM are setup. The two following environment variables will need to be declared; `OPENRAM_HOME` and `OPENRAM_TECH`. This will be declared in your `.bashrc` file.

In my own `.bashrc` the environment lines look like this:

`export OPENRAM_HOME="$HOME/anaconda3/envs/mem/lib/python3.13/site-packages/openram/compiler"`

`OPENRAM_TECH="$HOME/anaconda3/envs/mem/lib/python3.13/site-packages/openram/technology"`

At the end of your `.bashrc` you need to declare a specific Python Path so that OpenRAM knows where python is located. Use the line below to add the Python Path.

`PYTHONPATH="$PYTHONPATH:$OPENRAM_HOME"`

* **Note** If you are using Python within Linux/WSL it is needed to remove this line when working on other projects, or change the Python Path accordingly. 

### Using OpenRAM

You are there, now you can run OpenRAM to generate various files now. In this example, we are using the `sram_compiler.py` that OpenRAM provides. Run the line in the terminal, replacing `config.py` with whatever your config file is.

`python3 $OPENRAM_HOME/../sram_compiler.py config.py`

This can take some time to run, or may you may run into various errors. It is important to check that your environment variables are setup correct, and that all the correct folders are listed and spelled correctly. 

After this runs, you will notice a `generated_mem` folder, this contains every file that is generated, and most importantly, the **.v** file that we are going to use.



