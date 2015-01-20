#!/usr/bin/env python

from distutils.core import setup

install_requires = (
    'abjad',
    )

def main():
    setup(
        author='Josiah Wolf Oberholtzer',
        author_email='josiah.oberholtzer@gmail.com',
        install_requires=install_requires,
        name='plague_water',
        packages=('plague_water',),
        url='https://github.com/josiah-wolf-oberholtzer/plague_water',
        version='0.1',
        zip_safe=False,
        )


if __name__ == '__main__':
    main()