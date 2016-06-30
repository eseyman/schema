use utf8;
package Schema::Bugzilla::4_2rc1::Result::BugGroupMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_2rc1::Result::BugGroupMap

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

=head1 TABLE: C<bug_group_map>

=cut

__PACKAGE__->table("bug_group_map");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_group_map_bug_id_idx>

=over 4

=item * L</bug_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_group_map_bug_id_idx", ["bug_id", "group_id"]);

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::4_2rc1::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::4_2rc1::Result::Bug",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 group

Type: belongs_to

Related object: L<Schema::Bugzilla::4_2rc1::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Schema::Bugzilla::4_2rc1::Result::Group",
  { id => "group_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-23 17:41:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R72bXBxpV9o/g/Q6qD4fug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;