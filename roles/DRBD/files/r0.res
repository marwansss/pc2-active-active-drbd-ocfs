   resource r0 {
    on worker1-3 {
        device    /dev/drbd0;      # DRBD device name
        disk      /dev/sdb;       # Backing block device (e.g., a partition)
        address   10.0.3.154:7788;
        meta-disk internal;        # Meta-data stored internally or on a dedicated partition
    }

    on worker1-5 {
        device    /dev/drbd0;      # DRBD device name (must match node1)
        disk      /dev/sdb;       # Backing block device (same as node1)
        address   10.0.3.156:7788;
        meta-disk internal;        # Meta-data stored internally or on a dedicated partition
    }

}