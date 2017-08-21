FROM andrewd/crosstool-ng
MAINTAINER Andrew Dunham <andrew@du.nham.ca>

# Setup the build directories
RUN mkdir -p $HOME/src $HOME/ct $HOME/cross

# Add the config file for the build
ADD config /home/user/ct/.config

# Run the build
RUN cd $HOME/ct && ct-ng build STOP=cc_core_pass_2
