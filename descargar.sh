    # Script para preparar lo necesario
    # para el entorno de compilación Gitian

    # Proyectos Himmeros # sistemas_que_funcionan
    # enero 2022

    # Prereqisitos para Ubuntu

    # Esto incluye todos los requisitos previos para la construcción de KVM en Ubuntu:

sudo apt -y install git apache2 apt-cacher-ng python-vm-builder ruby qemu-utils

    # Instalo la base de la máquina virtual, para x86 y x64
    # previa clonación de Gitian

git clone https://github.com/devrandom/gitian-builder gitian-builder

cd gitian-builder

    # KVM
bin/make-base-vm
bin/make-base-vm --arch i386

    # LXC
bin/make-base-vm --lxc
bin/make-base-vm --lxc --arch i386

    # Set the USE_LXC environment variable to use LXC instead of KVM:

export USE_LXC=1

    # Docker
bin/make-base-vm --docker
bin/make-base-vm --docker --arch i386

    # Si tiene todo configurado correctamente, debería poder:

PATH=$PATH:$(pwd)/libexec
make-clean-vm --suite xenial --arch i386