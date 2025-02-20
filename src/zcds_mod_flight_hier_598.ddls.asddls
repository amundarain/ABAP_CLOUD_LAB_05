define hierarchy ZCDS_MOD_FLIGHT_HIER_598
  as parent child hierarchy (
    source ZCDS_FLIGHT_HIERA_598
    child to parent association _travel
    start where  AgencyId is initial
    siblings order by AgencyId
    multiple parents allowed
    orphans ignore
    cycles breakup
    cache on  
    
  )
{
    key AgencyId,
        CustomerId,
        $node.node_id as NodeId,
        $node.parent_id as ParentId,
        $node.hierarchy_is_cycle as hierIsCycle,
        $node.hierarchy_is_orphan as hierIsOrphan,
        $node.hierarchy_level     as hierLevel
}
