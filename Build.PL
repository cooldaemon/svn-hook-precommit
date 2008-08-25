#!/usr/bin/env perl

use strict;
use warnings;
use version; our $VERSION = qv('0.0.2');

use Module::Build;

my $builder = Module::Build->new(
    module_name => 'SVN::Hook::PreCommit',
    license     => 'perl',
    ## no critic (ValuesAndExpressions::RequireInterpolationOfMetachars)
    dist_author => 'Masahito Ikuta <cooldaemon@gmail.com>',
    ## use critic
    dist_version_from => 'lib/SVN/Hook/PreCommit.pm',
    requires          => {
        'Test::More'              => 0,
        'version'                 => 0,
        'Carp'                    => 0,
        'English'                 => 0,
        'Module::Pluggable::Fast' => 0,
        'SVN::Core'               => 0,
        'YAML::Syck'              => 0,
        'Readonly'                => 0,
        'Perl::Critic'            => 0,
        'Perl::Tidy'              => 0,
        'List::MoreUtils'         => 0,
        'Encode'                  => 0,
    },
    add_to_cleanup => ['SVN-Hook-PreCommit-*'],
);

$builder->create_build_script();
