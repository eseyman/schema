use utf8;
package Schema::Bugzilla::4_2rc2::Result::dependencies;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_2rc2::Result::dependencies

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<dependencies>

=cut

__PACKAGE__->table("dependencies");

=head1 ACCESSORS

=head2 blocked

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 dependson

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "blocked",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "dependson",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 RELATIONS

=head2 blocked

Type: belongs_to

Related object: L<Schema::Bugzilla::4_2rc2::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "blocked",
  "Schema::Bugzilla::4_2rc2::Result::bugs",
  { bug_id => "blocked" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dependson

Type: belongs_to

Related object: L<Schema::Bugzilla::4_2rc2::Result::bugs>

=cut

__PACKAGE__->belongs_to(
  "dependson",
  "Schema::Bugzilla::4_2rc2::Result::bugs",
  { bug_id => "dependson" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 17:22:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fvSC5kDJpIKR6DL7bL3Nug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
