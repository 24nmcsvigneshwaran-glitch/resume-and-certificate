// ibmcart.prg - A simple shopping cart demo in Clipper

CLEAR

? "IBM Cart - Simple Inventory System"
? "----------------------------------"

LOCAL aCart := {}, cItem := "", nPrice := 0, nTotal := 0

DO WHILE .T.
    ? ""
    INPUT "Enter item name (or 'exit' to finish): " TO cItem
    IF LOWER(cItem) == "exit"
        EXIT
    ENDIF

    INPUT "Enter item price: " TO nPrice
    AADD(aCart, {cItem, nPrice})
    nTotal += nPrice
ENDDO

? ""
? "Items in your cart:"
? "--------------------"
FOR i := 1 TO LEN(aCart)
    ? i, ": ", aCart[i][1], " - $", aCart[i][2]
NEXT

? "--------------------"
? "Total: $", nTotal
RETURN
