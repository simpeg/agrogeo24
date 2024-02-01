# SimPEG tutorial for Agrogeo24

**Instructors:**
[Devin C. Cowan][dccowan]<sup>1</sup>
and [Santiago Soler][santisoler]<sup>1</sup>

**Authors of the material:**
[Devin C. Cowan][dccowan]<sup>1</sup>,
[Santiago Soler][santisoler]<sup>1</sup>
and
[Lindsey Heagy][lindsey]<sup>1</sup>

**Contributors:**
[Mariana G.][mgomezn]<sup>2</sup>
and [Rowan Cockett][rowan]<sup>3</sup>

> <sup>1</sup>
> Geophysical Inversion Facility. Earth Ocean and Atmospheric
> Sciences. University of British Columbia.
> <br>
> <sup>2</sup>
> Centro de Investigación Científica y de Educación Superior de Ensenada
> (CICESE), Baja California
> <br>
> <sup>3</sup>
> [Curvenote](https://www.curvenote.com)


| **Information** | |
|---|---|
| Where | ETH Zürich, Switzerland |
| When | Feb 1 and Feb 2, 2024 |
| Organizer | [Agrogeophysics Organizing Committee][committee] |
| Website of the event | [agrogeophy.github.io/agrogeo24][agrogeo24] |


## Abstract

In this workshop we'll showcase how we can use the tools available in
[SimPEG][simpeg], a Python library for Simulations and Parameter Estimations in
Geophysics, to simulate ERT (a.k.a. DC resistivity) data from a synthetic model
and then to run a deterministic inversion to recover the original model.
You'll learn how to set up a DC survey, define a mesh, build a synthetic model,
create a simulation that implements all the physics, and run a forward
model to generate synthetic data. Lastly you'll learn how to set up an
inversion to recover the resistivity of the subsurface. By the end of the
tutorial you'll be able to invert your own data.


## About

We were invited by [Agrogeo24][agrogeo24] to give a workshop about SimPEG, to
show the agrogeophysical community how we can use [SimPEG][simpeg] to run
forward simulations of DC resistivity data (ERT), and how we can invert that
type of data.

During this workshop we'll go through two Jupyter notebooks that showcase
examples on how we can run forward and inverse problems for ERT data:

- [01-forward-dc-resisitivity-2d.ipynb](notebooks/01-forward-dc-resisitivity-2d.ipynb)
- [02-inversion-dc-resistivity-2d.ipynb](notebooks/02-inversion-dc-resistivity-2d.ipynb)


## Setup

During this workshop we'll use [Juptyer notebooks][jupyter] to run
the forward and inverse modelling of DC resistivity data.

To be able to follow the workshop and run these notebooks, you'll need to have
access to a Python environment. This could be done through **online services**
like [Google Colab][colab], or through a **local Python installation** like
[Anaconda][anaconda] or [Miniforge][miniforge].

By default we'll use Google Colab. But we'll consider installing Python locally
in case something goes wrong with the former.

Here will provide instructions to:

- [Configure Google Colab](#configure-google-colab)
- or [Install Python locally](#install-python-locally)


## Configure Google Colab

To be able to run the Jupyter notebooks for this tutorial in Google Colab,
we'll need to follow these steps:

1. Login to our Google Colab account.
1. Create a new notebook.
1. Install some Python libraries that we'll need to use, such as
   [SimPEG][simpeg].

### Step 1: Login to our Google Colab account

If you don't have a Google account, create one and log in. If you do, you just
need to log in.

### Step 2: Create a new notebook

1. Access to Google Colab by going to: https://colab.research.google.com
1. Find the top menu and choose `File` > `New notebook`. A new tab should open
   with a blank notebook in it.

### Step 3: Install some Python libraries

To be able to follow this workshop we need to install some Python libraries
that aren't preinstalled in the default Google Colab environment.

1. Click on the first cell of the notebook (if it's not empty, then create
   a new _Code_ cell and move it to the first position with the arrows icons
   that appear on its top-right).
1. Type the following line in the selected cell:
   ```
   !pip install simpeg==0.20.0 discretize==0.10.0 pymatsolver==0.2.0
   ```
   Note the `!` sign at the beginning of the line, **don't remove it**.
1. Run that cell by clicking the _Play_ button on its left or by pressing
   `Shift+Enter` in your keyboard. `pip` should install all the packaged listed
   in that line. If installation goes smoothly, you should see a line that
   reads `Successfully installed ...` and lists all the new packages that had
   been installed.

> [!IMPORTANT]
> Every time you open a notebook in Colab or create a new one, you'll have to
> reinstall these packages (Google Colab don't save installed states across
> notebooks).
>
> If it's a new notebook, just follow the previous instructions from the top.
>
> If it's an existing notebook, make sure that it has the `!pip install ...`
> line at the top (add it otherwise), and run it.

## Install Python locally

To be able to run the Jupyter notebooks for this tutorial in our own machines,
we'll have to follow these steps:

1. Install a Python distribution (like [Anaconda][anaconda] or
   [miniforge][miniforge]).
1. Create a [_conda environment_][conda-environ] with all the Python packages
   needed (for example, SimPEG).
1. Activate this conda environment and run [JupyterLab][jupyterlab] to start
   coding.

### Step 1: Install a Python distribution

We recommend installing a Python distribution like [miniforge][miniforge] or
[Anaconda][anaconda].

Both of them will install Python and a package manager that allows us to
install new Python libraries (like SimPEG for example), and also create
_environments_.

Anaconda uses the `conda` package manager, while Miniconda uses the new
`mamba`, which works faster than `conda`.

If you have either of both installed, you can skip this step. Otherwise, please
follow their installation instructions:

- Install miniforge: https://github.com/conda-forge/miniforge#install
- Install Anaconda: https://docs.anaconda.com/anaconda/install

### Step 2: Create the `simpeg-agrogeo24` conda environment

> [!IMPORTANT]
> In the following steps we'll make use of the `mamba` package manager. In case
> you installed Anaconda, use `conda` instead. You can simply replace `mamba`
> for `conda` on every command we ask to use it and it'll work fine.

1. Download the [`environment.yml`][environment_yml] file from
   (right-click and select "Save page as" or similar).
1. Make sure that the file is called `environment.yml`.
   Windows sometimes adds a `.txt` to the end, which you should remove.
1. Open a terminal (_Anaconda Prompt_ or _Miniforge Prompt_ if you are running
   Windows). The following steps should be done in the terminal.
1. Navigate to the folder that has the downloaded environment file
   (if you don't know how to do this, take a moment to read [the Software
   Carpentry lesson on the Unix shell][shell-novice]).
1. Create the conda environment by running `mamba env create --file
   environment.yml` (this will download and install all of the packages used in
   the tutorial). If you installed Anaconda, then replace `mamba` for `conda`
   in the previous line.

### Step 3: Activate the `simpeg-agrogeo24` environment and start JupyterLab

> [!TIP]
> You'll need a browser that is able to run JupyterLab (basically anyone except
> Internet Explorer or Edge). If you are in Windows, make sure you change your
> default browser to a different one.

Now we can activate the newly created `simpeg-agrogeo24` environment.

1. Open a terminal (_Anaconda Prompt_ or _Miniforge Prompt_ if you are running
   Windows).
1. Activate the `simpeg-agrogeo24` environment by running `mamba activate
   simpeg-agrogeo24`.
   If you installed Anaconda, then replace `mamba` for `conda` in the previous
   line.
1. With the `simpeg-agrogeo24` environment activated, we can start JupyterLab
   by running `jupyterlab` in the terminal. A new tab in our web browser should
   open showing JupyterLab's interface.

## License

This work is licensed under a [Creative Commons Attribution 4.0 International
License](http://creativecommons.org/licenses/by/4.0).

[santisoler]: https://www.santisoler.com
[dccowan]: https://www.github.com/dccowan
[lindsey]: https://lindseyjh.ca/
[mgomezn]: https://github.com/MGomezN
[rowan]: https://github.com/rowanc1
[simpeg]: https://www.simpeg.xyz
[jupyter]: https://jupyter.org/
[colab]: https://colab.research.google.com
[anaconda]: https://www.anaconda.com/download
[miniforge]: https://github.com/conda-forge/miniforge
[conda-environ]: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
[jupyterlab]: https://jupyterlab.readthedocs.io
[environment_yml]: https://raw.githubusercontent.com/simpeg/agrogeo24/main/environment.yml
[shell-novice]: http://swcarpentry.github.io/shell-novice
[agrogeo24]: https://agrogeophy.github.io/agrogeo24
[committee]: https://agrogeophy.github.io/agrogeo24/committees.html
