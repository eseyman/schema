use utf8;
package Schema::Bugzilla::2_20::Result::keyworddefs;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::2_20::Result::keyworddefs

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

=head1 TABLE: C<keyworddefs>

=cut

__PACKAGE__->table("keyworddefs");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 description

  data_type: 'mediumtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "description",
  { data_type => "mediumtext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<keyworddefs_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("keyworddefs_name_idx", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-08 09:50:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E+J503EdTNw8coALeTu/kg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
