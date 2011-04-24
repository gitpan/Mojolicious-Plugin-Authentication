
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'English' => '0',
    'Module::Build' => '0.3601',
    'Mojolicious::Lite' => '0',
    'Test::Mojo' => '0',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'A plugin to make authentication a bit easier',
  'dist_author' => [
    'Ben van Staveren <madcat@cpan.org>'
  ],
  'dist_name' => 'Mojolicious-Plugin-Authentication',
  'dist_version' => '1.11',
  'license' => 'perl',
  'module_name' => 'Mojolicious::Plugin::Authentication',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Mojo::Base' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
