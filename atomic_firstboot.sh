# get this file with: curl -OL https://tinyurl.com/atomic-first
curl -O https://raw.githubusercontent.com/SeanSingh/atomic/master/atomic_secondboot.sh
curl -O https://raw.githubusercontent.com/SeanSingh/atomic/master/atomic_thirdboot.sh
user=$(whoami)
sudo echo "$user ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
rpm-ostree pkg-add epel-release
rpm-ostree pkg-add ansible
rpm-ostree ex livefs
atomic host upgrade
id_rsa="$(ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChf1t/yKxAhZ77CNH6Mp7xU9Y1t7bw6VUy4x4g8dTcOdImTndMHz5OAaDnGLX9VS5/ZRoEYhAya60tlUtVgiIWLRmoBXuepVwhzAwDKiny6ps6UB9u0w0mZK3vLer3Bvm4bbKH5sWK0Fz5hnL89IRG4visJDYoUxnWdnlbvw93ylWHpXc1wwsJmdz1e9lvcZx7BTK2hWHxIna6OphKxC7Uc8lv5i+UD3lVTOKYim2h0hqVeS9QB2RGKQXCXQLFw0c1pwtxfdFy5P2hscKA3zvOn7hbOP1xDgaAwWZ5X+PYa/UN9ojzWJ0mgW3biE11/vC3XfBF+/zMyNA2O78b0+Vz)"
mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo "$id_rsa" >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
systemctl reboot
