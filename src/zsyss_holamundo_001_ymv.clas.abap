*************************************************************************
* Programador: YamirM Villegas
* Fecha: 14/01/2025
* Descripcion: Primer programa en Eclipse para el emnsaje Hola Mundo...
*************************************************************************

class zsyss_holamundo_001_ymv definition

  public
  final
  create public .

PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun .

PROTECTED SECTION.
PRIVATE SECTION.

ENDCLASS.

CLASS zsyss_holamundo_001_ymv IMPLEMENTATION.

    METHOD if_oo_adt_classrun~main.

      out->write( 'Hola Mundo en ABAP Cloud...' ).

    ENDMETHOD.

ENDCLASS.
