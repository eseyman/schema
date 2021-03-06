use utf8;
package Schema::Bugzilla::5_0rc1::Result::Longdesc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0rc1::Result::Longdesc

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<longdescs>

=cut

__PACKAGE__->table("longdescs");

=head1 ACCESSORS

=head2 comment_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 bug_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 who

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 bug_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 work_time

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [7,2]

=head2 thetext

  data_type: 'mediumtext'
  is_nullable: 0

=head2 isprivate

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 already_wrapped

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 type

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 extra_data

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "comment_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "bug_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "who",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "bug_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "work_time",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [7, 2],
  },
  "thetext",
  { data_type => "mediumtext", is_nullable => 0 },
  "isprivate",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "already_wrapped",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "type",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "extra_data",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</comment_id>

=back

=cut

__PACKAGE__->set_primary_key("comment_id");

=head1 RELATIONS

=head2 bug

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Bug>

=cut

__PACKAGE__->belongs_to(
  "bug",
  "Schema::Bugzilla::5_0rc1::Result::Bug",
  { bug_id => "bug_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 bugs_activities

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::BugsActivity>

=cut

__PACKAGE__->has_many(
  "bugs_activities",
  "Schema::Bugzilla::5_0rc1::Result::BugsActivity",
  { "foreign.comment_id" => "self.comment_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs_tags

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::LongdescsTag>

=cut

__PACKAGE__->has_many(
  "longdescs_tags",
  "Schema::Bugzilla::5_0rc1::Result::LongdescsTag",
  { "foreign.comment_id" => "self.comment_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 longdescs_tags_activities

Type: has_many

Related object: L<Schema::Bugzilla::5_0rc1::Result::LongdescsTagsActivity>

=cut

__PACKAGE__->has_many(
  "longdescs_tags_activities",
  "Schema::Bugzilla::5_0rc1::Result::LongdescsTagsActivity",
  { "foreign.comment_id" => "self.comment_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 who

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0rc1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "who",
  "Schema::Bugzilla::5_0rc1::Result::Profile",
  { userid => "who" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:41:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LmSpvaZKhrR2laMIV4n6TQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
