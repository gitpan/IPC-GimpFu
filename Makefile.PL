use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    (MM->can('signature_target') ? (SIGN => 1) : ()),
    NAME                => 'IPC::GimpFu',
    AUTHOR              => q{Cyril Brulebois <kibi@debian.org>},
    VERSION_FROM        => 'lib/IPC/GimpFu.pm',
    ABSTRACT_FROM       => 'lib/IPC/GimpFu.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'IPC-GimpFu-*' },
);
