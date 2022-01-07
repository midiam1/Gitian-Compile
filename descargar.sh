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

bin/make-base-vm
bin/make-base-vm --arch i386