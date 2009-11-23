#!perl
use Module::Build;
use strict;
use warnings;

my $build = Module::Build->new(
    create_makefile_pl => 'traditional',
    license            => 'perl',
    module_name        => 'Net::VNC',
    requires           => {
        'Class::Accessor::Fast' => '0',
        'Crypt::DES'            => '0',
        'Image::Imlib2'         => '0',
        'Test::More'            => '0',
    },
    script_files => { 'bin/vnccapture' },
);
$build->create_build_script;
