*************************************************************************
* Programador: Yamir M Villegas
* Fecha: 01/02/2025
* Descripcion: Programa para declarar variables y mostrar su contenido
*************************************************************************

CLASS zymv_decla_var_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Declaracion de Variables Completas
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    DATA: vl_fecha   TYPE d          VALUE '20200514',
          vl_tiempo  TYPE t          VALUE '083003',
          vl_entero  TYPE i          VALUE 100,
          vl_float   TYPE f          VALUE 1000000,
          vl_str     TYPE string     VALUE 'Hola Mundo String',
          vl_xstr    TYPE xstring.

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Declaracion de Variables Incompletas
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    DATA: vl_char(65535)     TYPE c     VALUE 'Hola Mundo CHAR',
          vl_numerico(20)    TYPE n     VALUE 200,
          vl_hexa(30)        TYPE x,
          vl_decimal(16)     TYPE p     DECIMALS 2 VALUE  '100000.90'.


    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zymv_decla_var_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Muestra de Variables por Consola
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    out->write( '=== Muestra por tipo de variables ===' ).
    out->write( 'Fecha: ' ) .



  ENDMETHOD.

ENDCLASS.
