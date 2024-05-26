#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

go_version=1.20

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

ynh_go_try_bash_extension() {
  if [ -x src/configure ]; then
    src/configure && make -C src || {
      ynh_print_info --message="Optional bash extension failed to build, but things will still work normally."
    }
  fi
}
