package inc::MyMakeMaker;

use Moose;

extends 'Dist::Zilla::Plugin::MakeMaker::Awesome';

override _build_MakeFile_PL_template => sub {
    my $self = shift;

    my $extra = <<'EOF';

use ExtUtils::HasCompiler qw( can_compile_loadable_object );
if ( can_compile_loadable_object( quiet => 1 ) ) {
    $WriteMakefileArgs{PREREQ_PM}{'List::SomeUtils::XS'} = 0;
}

EOF

    my $tmpl = super();
    $tmpl =~ s/^(WriteMakefile.+)/$extra$1/m
        or die;

    return $tmpl;
};
