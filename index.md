---
title: Introduction to SimPEG using an example with electrical resistivity tomography
---

+++ { "part": "abstract" }

In this workshop we'll showcase how we can use the tools available in
[SimPEG][https://simpeg.xyz], a Python library for Simulations and Parameter
Estimations in Geophysics, to simulate Electrical Resistivity Tomography (a.k.a. ERT / DC resistivity) data from
a synthetic model and then to run a deterministic inversion to recover the
original model.
You'll learn how to set up a DC survey, define a mesh, build a synthetic model,
create a simulation that implements all the physics, and run a forward
model to generate synthetic data. Lastly you'll learn how to set up an
inversion to recover the resistivity of the subsurface.
By the end of the tutorial you'll be able to use SimPEG to invert your own
All of the simulation types that are available within SimPEG (gravity, magnetics, electromagnetics, etc.) are built with the same common framework, meaning many of the concepts illustrated in this tutorial are transferrable to other data types. 
+++

## Prerequisites

- A bit of familiarity with Python
- A Google Colab account or a local Python installation (like Anaconda or
  Miniforge)
