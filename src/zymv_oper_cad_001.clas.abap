*************************************************************************
* Programador: Yamir M Villegas
* Fecha: 41/02/2025
* Descripcion: Programa para operar con cadenas
* Curso: ABAP desde Cero #03
*************************************************************************

CLASS zymv_oper_cad_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Declaracion de Variables
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    DATA: vl_longitud(10)   TYPE n,
          vl_str            TYPE string     VALUE 'hola-mundo-ejemplo',
          vl_char1(30)      TYPE c,
          vl_char2(30)      TYPE c,
          vl_char3(30)      TYPE c,
          vl_char(30)       TYPE c.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zymv_oper_cad_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Dividir Cadenas ('hola-mundo-ejemplo')
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   SPLIT vl_str AT '-' INTO vl_char1 vl_char2 vl_char3.

   out->write( '=== Variables con Cadenas Divididas ===' ).
   out->write( vl_char1 ).
   out->write( vl_char2 ).
   out->write( vl_char3 ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Concatenar Cadenas ('hola-mundo-ejemplo')
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

   CONCATENATE vl_char1 vl_char2 INTO vl_char SEPARATED BY space.

   out->write( '=== Variables con Cadenas Concatenadas ===' ).
   out->write( vl_char1 ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " HANA
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_char.
   vl_char = vl_char2 && ',' && vl_char3.

   out->write( '=== Variables con Cadenas Concatenadas HANA ===' ).
   out->write( vl_char ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Longitud de Cadena
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   vl_longitud = STRLEN( vl_str ).

   out->write( '=== Longitud de Cadena ===' ).
   out->write( vl_longitud ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Subcadenas
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   vl_char = vl_str+0(3).

   out->write( '=== Subcadenas de contenido de variable ===' ).
   out->write( vl_str ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Buscar en Cadena
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   "SEARCH vl_str FOR vl_char2.

   out->write( '=== Buscar contenido en Cadena ===' ).
   out->write( sy-subrc ).
   out->write( sy-fdpos ).

   "SEARCH vl_str FOR 'suma'.

   out->write( '=== Buscar contenido en Cadena ===' ).
   out->write( sy-subrc ).
   out->write( sy-fdpos ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Reemplazar contenidos de cadenas
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  REPLACE ALL OCCURRENCES OF '-' IN vl_str WITH '*'.

   out->write( '=== Cadena Reemplazada ===' ).
   out->write( vl_str ).

   REPLACE ALL OCCURRENCES OF '*' IN vl_str WITH '-'.

   out->write( '=== Cadena Reemplazada ===' ).
   out->write( vl_str ).



  ENDMETHOD.

ENDCLASS.
