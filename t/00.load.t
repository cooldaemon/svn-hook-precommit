use Test::More tests => 1;

BEGIN {
use_ok( 'SVN::Hook::PreCommit' );
}

diag( "Testing SVN::Hook::PreCommit $SVN::Hook::PreCommit::VERSION" );
