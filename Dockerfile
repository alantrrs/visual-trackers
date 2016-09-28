# Start from Environment with toolkit installed
FROM empiricalci/vot2016

# Install python dependency
RUN apt-get install -y python

# Copy research code
COPY . /tracker
WORKDIR /tracker

# Set default command to execute
ENTRYPOINT octave run_experiments.m
