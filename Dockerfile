FROM fedora:32

RUN dnf -y update
RUN dnf -y install gcc make automake gcc-c++
RUN dnf -y install pciutils which kmod
RUN dnf -y install wget
RUN wget https://kojipkgs.fedoraproject.org/repos-dist/coreos-pool/latest/x86_64/Packages/k/kernel-devel-5.6.19-300.fc32.x86_64.rpm
RUN yum -y localinstall kernel-devel-5.6.19-300.fc32.x86_64.rpm
RUN wget http://developer.download.nvidia.com/compute/cuda/11.0.2/local_installers/cuda_11.0.2_450.51.05_linux.run
