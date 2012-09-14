# Class: hadoop
#
# This module manages hadoop
#
# Parameters: None
#
# Actions: None
#
# Requires: None
#
# Sample Usage: include hadoop
#
class hadoop {
  include hadoop::install
  include hadoop::config
}
