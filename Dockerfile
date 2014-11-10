FROM thewtex/itkka
MAINTAINER Matt McCormick <matt.mccormick@kitware.com>

USER root
RUN apt-get update

RUN apt-get install -y git

RUN apt-get install -y python-dev
RUN apt-get install -y python-pip

RUN apt-get install -y python-numpy
RUN apt-get install -y python-scipy
RUN apt-get install -y python-matplotlib
RUN apt-get install -y ipython
RUN apt-get install -y ipython-notebook
RUN apt-get install -y python-nose
RUN apt-get install -y python-pandas
RUN apt-get install -y python-sympy

CMD ["ipython", "notebook", "--ip=*", "--pylab=inline", "--no-browser"]
EXPOSE 8888
