use utf8;
package Schema::Bugzilla::5_0_6::Result::Logincooky;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Bugzilla::5_0_6::Result::Logincooky

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

=head1 TABLE: C<logincookies>

=cut

__PACKAGE__->table("logincookies");

=head1 ACCESSORS

=head2 cookie

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 userid

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 ipaddr

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 lastused

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cookie",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "userid",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "ipaddr",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "lastused",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</cookie>

=back

=cut

__PACKAGE__->set_primary_key("cookie");

=head1 RELATIONS

=head2 userid

Type: belongs_to

Related object: L<Schema::Bugzilla::5_0_6::Result::Profile>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Schema::Bugzilla::5_0_6::Result::Profile",
  { userid => "userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-06-20 20:50:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3NFwC1SlahV7waSqLfxkVg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
