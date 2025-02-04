*******************************************************
*Programador: Yamir M. Villegas
*Fecha: 15/01/2025
*Descripcion: Carga de BD de Articulos
*******************************************************

CLASS zymv_clas_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zymv_clas_art_001 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

**********************************************************************
*    Declaracion de Tbala de articulos
**********************************************************************

    data: it_art TYPE STANDARD TABLE OF zymv_tab_art.

*          INSERT INITIAL LINE INTO it_art ASSIGNING FIELD-SYMBOL(<fs_art>).
*          <fs_art>-id_art = 1.

**********************************************************************
* Carga manual de tabla con datos de web https://lalibreria.mx
**********************************************************************
    it_art = VALUE #(
     ( client = sy-mandt id_art = 1 descr = 'MUJI GEL .38' desc2 = 'Lapices con gel de colores varios'
    color = 'varios' piezas = 1 stock = 50
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-muji-38_400x.jpg?v=1593910547')
     ( client = sy-mandt id_art = 2 descr = 'LIBRETA BASICA' desc2 = 'Libreta para apuntes generales'
    color = 'marron' piezas = 1 stock = 30
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-inicial-nombre-serie-01_400x.jpg?v=1602029410')
     ( client = sy-mandt id_art = 3 descr = 'MONTHLY PLANNER' desc2 = 'Planificador Mensual'
    color = 'Negro' piezas = 1 stock = 60
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-3_204e518f-b0a5-4ed1-a5c3-676dd8e98a6f_400x.jpg?v=1588283579')
     ( client = sy-mandt id_art = 4 descr = 'POP STICKERS' desc2 = 'Etiquetas POP'
    color = 'Blanco y Negro' piezas = 2 stock = 30
    url = 'https://lalibreteria.mx/cdn/shop/products/lalibreteria-pack-pop-05_9519ea92-e16d-4505-aac9-3db4135632ab_400x.jpg?v=1641525939')
     ( client = sy-mandt id_art = 5 descr = 'SEED SUPER GOLD HIGH CLASS' desc2 = 'Set de sacapuntas Alta Gama'
    color = 'Blanco&Dorado' piezas = 2 stock = 15
    url = 'https://lalibreteria.mx/cdn/shop/products/lalibreteria-pack-pop-05_9519ea92-e16d-4505-aac9-3db4135632ab_400x.jpg?v=1641525939')
    ).

    INSERT zymv_tab_art FROM TABLE @it_art.

    If sy-subrc = 0.
        out->write( 'Insert Successful..!' ).
    Else.
        out->write( 'Insert wrong..!!' ).
    Endif.

  ENDMETHOD.

ENDCLASS.
