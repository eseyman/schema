use utf8;
package Schema::Bugzilla::4_4rc2::Result::Series;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::4_4rc2::Result::Series

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

=head1 TABLE: C<series>

=cut

__PACKAGE__->table("series");

=head1 ACCESSORS

=head2 series_id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 creator

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 1

=head2 category

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 subcategory

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 frequency

  data_type: 'smallint'
  is_nullable: 0

=head2 query

  data_type: 'mediumtext'
  is_nullable: 0

=head2 is_public

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "series_id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "creator",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 1 },
  "category",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "subcategory",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "frequency",
  { data_type => "smallint", is_nullable => 0 },
  "query",
  { data_type => "mediumtext", is_nullable => 0 },
  "is_public",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</series_id>

=back

=cut

__PACKAGE__->set_primary_key("series_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<series_category_idx>

=over 4

=item * L</category>

=item * L</subcategory>

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("series_category_idx", ["category", "subcategory", "name"]);

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::SeriesCategory>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Schema::Bugzilla::4_4rc2::Result::SeriesCategory",
  { id => "category" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 creator

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "creator",
  "Schema::Bugzilla::4_4rc2::Result::Profile",
  { userid => "creator" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 series_datas

Type: has_many

Related object: L<Schema::Bugzilla::4_4rc2::Result::SeriesData>

=cut

__PACKAGE__->has_many(
  "series_datas",
  "Schema::Bugzilla::4_4rc2::Result::SeriesData",
  { "foreign.series_id" => "self.series_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 subcategory

Type: belongs_to

Related object: L<Schema::Bugzilla::4_4rc2::Result::SeriesCategory>

=cut

__PACKAGE__->belongs_to(
  "subcategory",
  "Schema::Bugzilla::4_4rc2::Result::SeriesCategory",
  { id => "subcategory" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-12-09 21:56:20
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:J/9y4f49EGqi94uYD4VtNw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
