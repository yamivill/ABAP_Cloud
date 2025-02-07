*************************************************************************
* Programador: Yamir M Villegas
* Fecha: 05/02/2025
* Descripcion: Programa para operaraciones Matematicas
* Curso: ABAP desde Cero #04
*************************************************************************

CLASS zymv_oper_mat_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Declaracion de Variables
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    DATA: vl_resul(10)      TYPE n,
          vl_decimal(16)    TYPE p  DECIMALS 3,
          vl_char(16)       TYPE c.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zymv_oper_mat_001 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Suma
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   vl_resul = 30 + 20.

   out->write( '=== Resultado de Suma ===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Suma Obsoleta
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_resul.
   vl_resul = 59.
   ADD 10 TO vl_resul.

   out->write( '=== Resultado de Suma Obsoleta===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Resta
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   vl_resul = 120 - 80.

   out->write( '=== Resultado de Resta ===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Resta Obsoleta
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_resul.
   vl_resul = 80.
   "SUBTRACT 33 FROM  vl_resul.

   out->write( '=== Resultado de Resta Obsoleta===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Multiplicacion
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   vl_resul = 12 * 10.

   out->write( '=== Resultado de Multiplicacion ===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Multiplicacion Obsoleta
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_resul.
   vl_resul = 20.
   MULTIPLY vl_resul BY 5.

   out->write( '=== Resultado de Multiplicacion Obsoleta===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Division
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   vl_decimal = 80 / 33.

   out->write( '=== Resultado de Division ===' ).
   out->write( vl_decimal ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Conversion de resultado Matematico a CHAR sin Funcion
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_char.
   vl_char = 80 / 33.

   out->write( '=== Resultado de Division a CHAR ===' ).
   out->write( vl_char ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Division Obsoleta
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_decimal.
   vl_decimal = 20.
   DIVIDE vl_decimal BY 5.

   out->write( '=== Resultado de Division Obsoleta===' ).
   out->write( vl_decimal ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Division Entero
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_resul.
   vl_resul = 30 DIV 4.

   out->write( '=== Resultado de Division Entero ===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion de Division Residuo
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_resul.
   vl_resul = 30 MOD 4.

   out->write( '=== Resultado de Division Residuo ===' ).
   out->write( vl_resul ).

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Operacion con Exponente
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   CLEAR vl_resul.
   vl_resul = 3 ** 10.

   out->write( '=== Resultado de Exponente ===' ).
   out->write( vl_resul ).

  ENDMETHOD.

ENDCLASS.
