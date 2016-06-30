use utf8;
package Schema::Bugzilla::4_1_1::Result::BugsActivity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_1_1::Result::BugsActivity

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

=head1 TABLE: C<bugs_activity>

=cut

__PACKAGE__->table("bugs_activity");

=head1 ACCESSORS

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 attach_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 who

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 bug_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 fieldid

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 added

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 removed

  data_type: 'tinytext'
  is_nullable: 1

=head2 comment_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "attach_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "who",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "bug_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "fieldid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "added",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "removed",
  { data_type => "tinytext", is_nullable => 1 },
  "comment_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
);

=head1 RELATIONS

=head2 attach

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_1::Result::Attachment>

=cut

__PACKAGE__->belongs_to(
  "attach",
  "Schema::Bugzilla::4_1_1::Result::Attachment",
  { attach_id => "attach_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_1::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::4_1_1::Result::Bug",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 comment

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_1::Result::Longdesc>

=cut

__PACKAGE__->belongs_to(
  "comment",
  "Schema::Bugzilla::4_1_1::Result::Longdesc",
  { comment_id => "comment_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 fieldid

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_1::Result::Fielddef>

=cut

__PACKAGE__->belongs_to(
  "fieldid",
  "Schema::Bugzilla::4_1_1::Result::Fielddef",
  { id => "fieldid" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);

=head2 who

Type: belongs_to

Related object: L<Schema::Bugzilla::4_1_1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "who",
  "Schema::Bugzilla::4_1_1::Result::Profile",
  { userid => "who" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-08-23 17:40:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CaY0KdgCWMi69QCVvo5rVg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;