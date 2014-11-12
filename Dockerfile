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
RUN apt-get install -y python-nose
RUN apt-get install -y python-pandas
RUN apt-get install -y python-sympy
RUN apt-get install -y cython

WORKDIR /opt/src
RUN git clone https://github.com/damianavila/live_reveal.git
WORKDIR /opt/src/live_reveal
USER root
RUN python setup.py install
RUN python3 setup.py install

RUN apt-get install -y gccxml
RUN apt-get install -y doxygen
RUN apt-get install -y python-lxml
RUN pip install xdress

ENV PASSWORD science
WORKDIR /notebooks

CMD ["/notebook.sh"]
