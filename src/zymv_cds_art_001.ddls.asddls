@AbapCatalog.sqlViewName: 'ZYMV_V_ART_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Articulos Arte'
@Metadata.ignorePropagatedAnnotations: true
define view ZYMV_CDS_ART_001 as select from zymv_tab_art
{
  key id_art as IdArt,
  descr      as Descr,
  desc2      as Desc2,
  color      as Color,
  piezas     as Piezas,
  stock      as Stock,
  url       as Url,
  
  // 0 neutral grey
  // 1 negative red
  // 2 critical yellow
  //  position green
      
  case
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2 
    when stock >= 100 then 0
    else 0
  end as status
}
