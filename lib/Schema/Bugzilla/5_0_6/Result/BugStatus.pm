use utf8;
package Schema::Bugzilla::5_0_6::Result::BugStatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0_6::Result::BugStatus

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

=head1 TABLE: C<bug_status>

=cut

__PACKAGE__->table("bug_status");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_auto_increment: 1
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 sortkey

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 isactive

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 visibility_value_id

  data_type: 'smallint'
  is_nullable: 1

=head2 is_open

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "sortkey",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "isactive",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "visibility_value_id",
  { data_type => "smallint", is_nullable => 1 },
  "is_open",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<bug_status_value_idx>

=over 4

=item * L</value>

=back

=cut

__PACKAGE__->add_unique_constraint("bug_status_value_idx", ["value"]);

=head1 RELATIONS

=head2 status_workflow_new_statuses

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::StatusWorkflow>

=cut

__PACKAGE__->has_many(
  "status_workflow_new_statuses",
  "Schema::Bugzilla::5_0_6::Result::StatusWorkflow",
  { "foreign.new_status" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 status_workflow_old_statuses

Type: has_many

Related object: L<Schema::Bugzilla::5_0_6::Result::StatusWorkflow>

=cut

__PACKAGE__->has_many(
  "status_workflow_old_statuses",
  "Schema::Bugzilla::5_0_6::Result::StatusWorkflow",
  { "foreign.old_status" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-06-20 20:50:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/lmk6amWHpwpOm5j++KHJQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
