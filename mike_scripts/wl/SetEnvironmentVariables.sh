#!/bin/sh
 
# Directory where the software to be installed is located
SOFTWARE_DIRECTORY="/Software/Oracle/Weblogic/"
export SOFTWARE_DIRECTORY
 
# Name of JVM file that is used in the installation
JVM_FILE_NAME="jdk-8u73-linux-x64.tar.gz"
export JVM_FILE_NAME
 
# Name of the WebLogic file that is used in the installation
WEBLOGIC_FILE_NAME="fmw_12.2.1.0.0_wls.jar"
export WEBLOGIC_FILE_NAME
 
# The scripts create files that are placed in this directory
TEMPORARY_DIRECTORY="${SOFTWARE_DIRECTORY}"
export TEMPORARY_DIRECTORY
 
# Base directory
BASE_DIRECTORY="/data/app"
export BASE_DIRECTORY
 
# Directory that will used for the installation and configuration
RUNTIME_HOME="${BASE_DIRECTORY}/wl_12.2.1"
export RUNTIME_HOME
 
# Directory where the JVM will be installed
JAVA_HOME="${RUNTIME_HOME}/jdk1.8.0_73"
export JAVA_HOME
 
# Directory that will be used as the middleware home (holds software binaries)
MIDDLEWARE_HOME="${RUNTIME_HOME}"
export MIDDLEWARE_HOME
 
# Location of the Oracle inventory
ORACLE_INVENTORY_HOME="${BASE_DIRECTORY}/../oraInventory"
export ORACLE_INVENTORY_HOME
 
# User and Group under which the software needs to be installed
ORACLE_INSTALL_USER="oracle"
export ORACLE_INSTALL_USER
ORACLE_INSTALL_GROUP="oinstall"
export ORACLE_INSTALL_GROUP
 
# Name of the domain
DOMAIN_NAME="tryout_domain"
export DOMAIN_NAME
 
# Directory where the configuration will be placed
CONFIGURATION_HOME="${RUNTIME_HOME}/config"
export CONFIGURATION_HOME
 
# Domain home (directory that contains the domain configuration files)
DOMAIN_CONFIGURATION_HOME="${CONFIGURATION_HOME}/domains/${DOMAIN_NAME}"
export DOMAIN_CONFIGURATION_HOME
 
# Domain application home (directory in which application related artifacts are placed)
DOMAIN_APPLICATION_HOME="${CONFIGURATION_HOME}/applications/${DOMAIN_NAME}"
export DOMAIN_APPLICATION_HOME
 
# Node manager home (directory that contains the node manager configuration files)
NODE_MANAGER_HOME="${CONFIGURATION_HOME}/../user_projects/domains/base_domain/nodemanager"
export NODE_MANAGER_HOME
 
# Default homes that are created when the software is installed
COHERENCE_HOME="${MIDDLEWARE_HOME}/coherence"
export COHERENCE_HOME
FUSION_MIDDLEWARE_HOME="${MIDDLEWARE_HOME}/oracle_common"
export FUSION_MIDDLEWARE_HOME
WEBLOGIC_HOME="${MIDDLEWARE_HOME}/wlserver"
export WEBLOGIC_HOME

