# Alyx's AUR by Alyx Shang.
# Licensed under the FSL v1.

setup_env(){
    mkdir build
    mkdir build/packages
    mkdir build/repo
    cp -rf src/* build/packages
    cd build/packages
}

build_pkgs(){
    for d in * ; do
        if [ -d $d ]; then
            echo "Building package $d"
            cd $d
            makepkg -S
            mv *.tar.zst ../../repo
            cd ..
        fi
    done
    cd ..
}

build_repo(){
    mkdir repo/any
    mv repo/*.tar.zst any
    cd any
    repo-add alyxs-aur.db.tar.gz *.tar.zst
    rm -rf alyxs-aur.db alyxs-aur.files
    mv alyxs-aur.db.tar.gz alyxs-aur.db
    mv alyxs-aur.files.tar.gz alyxs-aur.files
    cd ..
    tar -cvzf any.tgz any
    mv any.tgz ..
}

clean_up(){
    rm -rf build
}

setup_env
build_pkgs
build_repo
clean_up