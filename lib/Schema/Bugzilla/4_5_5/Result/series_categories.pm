use utf8;
package Schema::Bugzilla::4_5_5::Result::series_categories;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_5_5::Result::series_categories

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

=head1 TABLE: C<series_categories>

=cut

__PACKAGE__->table("series_categories");

=head1 ACCESSORS

=head2 id

  data_type: 'smallint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "smallint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<series_categories_name_idx>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("series_categories_name_idx", ["name"]);

=head1 RELATIONS

=head2 category_group_maps

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::category_group_map>

=cut

__PACKAGE__->has_many(
  "category_group_maps",
  "Schema::Bugzilla::4_5_5::Result::category_group_map",
  { "foreign.category_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 series_categories

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::series>

=cut

__PACKAGE__->has_many(
  "series_categories",
  "Schema::Bugzilla::4_5_5::Result::series",
  { "foreign.category" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 series_subcategories

Type: has_many

Related object: L<Schema::Bugzilla::4_5_5::Result::series>

=cut

__PACKAGE__->has_many(
  "series_subcategories",
  "Schema::Bugzilla::4_5_5::Result::series",
  { "foreign.subcategory" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-09-30 16:56:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E8Aoqh5/MrYbWZI1dFN3ig


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
