
use strict;
use warnings;

use Module::Build 0.38;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.38"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.38"
  },
  "dist_abstract" => "A plugin to make authentication a bit easier",
  "dist_author" => [
    "Ben van Staveren <madcat\@cpan.org>"
  ],
  "dist_name" => "Mojolicious-Plugin-Authentication",
  "dist_version" => "1.25",
  "license" => "perl",
  "module_name" => "Mojolicious::Plugin::Authentication",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Mojo::Base" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "Mojolicious::Lite" => 0,
    "Test::Mojo" => 0,
    "Test::More" => 0,
    "strict" => 0,
    "warnings" => 0
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
