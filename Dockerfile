FROM pdxhub/jupyter-anaconda
MAINTAINER Eric Drechsel <eric@pdxhub.org>

# Change this to your personalized download URL
# https://dato.com/download/install-graphlab-create-command-line.html

RUN pip install --upgrade --no-cache-dir REPLACE_WITH_YOUR_GRAPHLAB_URL 
