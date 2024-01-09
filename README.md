# SimPEG tutorial for Agrogeo24

**Instructors:**
[Devin C. Cowan][dccowan]<sup>1</sup>
and [Santiago Soler][santisoler]<sup>1</sup>

> <sup>1</sup>
> Geophysical Inversion Facility. Earth Ocean and Atmospheric
> Sciences. University of British Columbia.

## About

<!-- Describe what the tutorial will be about, what kind of problem we'll
solve, which tools are we going to use, provide short list of steps that we'll
go through.-->

## Setup

During this workshop we'll use [Juptyer notebooks][jupyter] to run
the forward and inverse modelling of DC resistivity data.

To be able to follow the workshop and run these notebooks, you'll need to have
access to a Python environment. This could be done through **online services**
like [Google Colab][colab], or through a **local Python installation** like
[Anaconda][anaconda] or [Miniforge][miniforge].

By default we'll use Google Colab. But we'll provide instructions on how to
install Python, SimPEG and Jupyter locally in case something goes wrong with
the former.

## Configure Google Colab

<!-- add instructions for getting everything ready in Google Colab -->

## Local Python installation

To be able to run the Jupyter notebooks for this tutorial we'll have to follow
these steps:

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
[jupyter]: https://jupyter.org/
[colab]: https://colab.research.google.com
[anaconda]: https://www.anaconda.com/download
[miniforge]: https://github.com/conda-forge/miniforge
[conda-environ]: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
[jupyterlab]: https://jupyterlab.readthedocs.io
[environment_yml]: https://raw.githubusercontent.com/simpeg/agrogeo24/main/environment.yml
[shell-novice]: http://swcarpentry.github.io/shell-novice
