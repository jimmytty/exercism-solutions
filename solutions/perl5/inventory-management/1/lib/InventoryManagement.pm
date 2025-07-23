package InventoryManagement;

use v5.40;

sub create_inventory ($items) {
    my %inventory;
    foreach my $item (@$items) {
        $inventory{$item} //= 0;
        $inventory{$item} += 1;
    }
    return \%inventory;
}

sub add_items ( $inventory, $items ) {
    foreach my $item (@$items) {
        $inventory->{$item} += 1;
    }
    return $inventory;
}

sub remove_items ( $inventory, $items ) {
    foreach my $item (@$items) {
        next unless $inventory->{$item};
        $inventory->{$item} -= 1;
    }
    return $inventory;
}

sub delete_item ( $inventory, $item ) {
    delete $inventory->{$item};
    return $inventory;
}

1;
