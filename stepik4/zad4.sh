#!/bin/bash

# Utwórz wolumin Docker
docker volume create my_volume

# Dodaj plik tekstowy do woluminu
docker run --rm -v my_volume:/volume busybox sh -c 'echo "Hello, World!" > /volume/hello.txt'

# Utwórz archiwum z woluminu Docker
docker run --rm -v my_volume:/volume -v $(pwd):/backup busybox tar cvf /backup/my_volume.tar /volume

# Zaszyfruj archiwum hasłem
gpg -c my_volume.tar

# Usuń niezaszyfrowane archiwum
rm my_volume.tar

# Odszyfruj archiwum
gpg -d my_volume.tar.gpg > my_volume_decrypted.tar