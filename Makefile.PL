use strict;
use warnings;
use inc::Module::Install;

my $mi = '0.94';
if ($inc::Module::Install::VERSION lt $mi) {
    die "Your Module::Install is older than $mi, please upgrade it";
}

my $dist = 'POE-Component-IRC-Plugin-RTorrentStatus';
name           ($dist);
author         ('Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>');
abstract_from  ('lib/POE/Component/IRC/Plugin/RTorrentStatus.pm');
version_from   ('lib/POE/Component/IRC/Plugin/RTorrentStatus.pm');
install_script ('script/irctor-queue');
license        ('perl');
homepage       ("http://search.cpan.org/dist/$dist");
githubmeta     ();
bugtracker     ("http://github.com/hinrik/\L$dist/issues");
resources      (Ratings => "http://cpanratings.perl.org/d/$dist");

requires       ('POE'                                     => '1.287');
requires       ('Capture::Tiny'                           => '0');
requires       ('DateTime'                                => '0');
requires       ('DateTime::Format::Human::Duration'       => '0');
requires       ('Format::Human::Bytes'                    => '0');
requires       ('List::Util'                              => '0');
requires       ('POE::Component::IRC'                     => '0');
requires       ('POE::Component::IRC::Plugin::FollowTail' => '6.22');

test_requires  ('Test::More'   => '0');
test_requires  ('Test::Script' => '1.07');
tests_recursive();

author_requires('Perl::Critic'        => '1.098');
author_requires('Test::Perl::Critic'  => '0');
author_requires('Test::Pod'           => '1.41');
author_requires('Test::Pod::Coverage' => '1.08');

WriteAll();
