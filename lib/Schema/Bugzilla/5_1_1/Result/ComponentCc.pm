use utf8;
package Schema::Bugzilla::5_1_1::Result::ComponentCc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_1_1::Result::ComponentCc

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

=head1 TABLE: C<component_cc>

=cut

__PACKAGE__->table("component_cc");

=head1 ACCESSORS

=head2 user_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 component_id

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "component_id",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<component_cc_user_id_idx>

=over 4

=item * L</component_id>

=item * L</user_id>

=back

=cut

__PACKAGE__->add_unique_constraint("component_cc_user_id_idx", ["component_id", "user_id"]);

=head1 RELATIONS

=head2 component

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_1::Result::Component>

=cut

__PACKAGE__->belongs_to(
  "component",
  "Schema::Bugzilla::5_1_1::Result::Component",
  { id => "component_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<Schema::Bugzilla::5_1_1::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::Bugzilla::5_1_1::Result::Profile",
  { userid => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-05-26 22:19:12
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Sf+WYKPpfNZUYGo/LXSdag


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
