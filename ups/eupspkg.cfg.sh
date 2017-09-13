# EupsPkg config file. Sourced by 'eupspkg'

build()
{
	(mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=$PREFIX .. && make)
}

install()
{
	clean_old_install
	(cd build && make install)
    (cd $PREFIX/include && ln -s eigen3/* .)
	install_ups
}
