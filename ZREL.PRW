#include "Protheus.ch"
#INCLUDE "RPTDEF.CH"
#INCLUDE "FWPrintSetup.ch"

USER FUNCTION ZREL()
Local oPrinter
Local lAdjustToLegacy := .F.
Local lDisableSetup  := .T.
Local cLocal          := "\spool"
oPrinter := FWMSPrinter():New("exemplo.rel", IMP_PDF, lAdjustToLegacy,cLocal, lDisableSetup, , , , , , .F., )
//oPrinter:Ellipse( 10, 10, 100, 100, CLR_BLACK, CLR_BLACK, 0, "-2")
oPrinter:Line ( 10, 10, 100, 100,CLR_BLACK, CLR_BLACK , 0, "-2") //-->

/// outra atualizações do meu fonte


oPrinter:Setup()
oPrinter:Preview()

RETURN
