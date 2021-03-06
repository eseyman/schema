use utf8;
package Schema::Bugzilla::3_1_4::Result::flagexclusions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::3_1_4::Result::flagexclusions

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

=head1 TABLE: C<flagexclusions>

=cut

__PACKAGE__->table("flagexclusions");

=head1 ACCESSORS

=head2 type_id

  data_type: 'smallint'
  is_nullable: 0

=head2 product_id

  data_type: 'smallint'
  is_nullable: 1

=head2 component_id

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "type_id",
  { data_type => "smallint", is_nullable => 0 },
  "product_id",
  { data_type => "smallint", is_nullable => 1 },
  "component_id",
  { data_type => "smallint", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-10-06 22:49:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YOyIAAOSZPB0OGBByg/7kg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
