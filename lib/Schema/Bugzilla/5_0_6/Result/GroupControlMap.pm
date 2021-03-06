use utf8;
package Schema::Bugzilla::5_0_6::Result::GroupControlMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0_6::Result::GroupControlMap

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

=head1 TABLE: C<group_control_map>

=cut

__PACKAGE__->table("group_control_map");

=head1 ACCESSORS

=head2 group_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 entry

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 membercontrol

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 othercontrol

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 canedit

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 editcomponents

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 editbugs

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 canconfirm

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "group_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "product_id",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "entry",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "membercontrol",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "othercontrol",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "canedit",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "editcomponents",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "editbugs",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "canconfirm",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<group_control_map_product_id_idx>

=over 4

=item * L</product_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "group_control_map_product_id_idx",
  ["product_id", "group_id"],
);

=head1 RELATIONS

=head2 group

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0_6::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Schema::Bugzilla::5_0_6::Result::Group",
  { id => "group_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 product

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0_6::Result::Product>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Schema::Bugzilla::5_0_6::Result::Product",
  { id => "product_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-06-20 20:50:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:J4o1TFytdxehIcwtH9dUIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
