================
VM Configuration
================

This repository contains scripts to automate the configuration of a virtual
machine (VM) with all software required for Data 364: Data Acquisition and
Management at the `United States Air Force Academy`_.

.. _United States Air Force Academy: https://www.usafa.edu/

Usage
=====

Simply execute ``setup.sh`` in the root directory of the repository. This
script installs required packages, configures services, and creates databases
(restoring them from database backups) that are used in the course.

Notes
=====

The existing scripts target Ubuntu 22.04 LTS. In theory, they can be used for
any Debian-based Linux distribution, but several steps, such as patching the
configuration of services, may have to be modified.
