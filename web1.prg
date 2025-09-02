// web1.prg - Generates a simple HTML file

PROCEDURE Main()
    LOCAL cFile := "index.html"
    LOCAL nHandle

    nHandle := FCreate(cFile)

    IF nHandle < 0
        ? "Error creating file: ", cFile
        RETURN
    ENDIF

    FWrite(nHandle, ;
        "<!DOCTYPE html>" + CRLF + ;
        "<html lang='en'>" + CRLF + ;
        "<head><meta charset='UTF-8'><title>Web1 Page</title></head>" + CRLF + ;
        "<body>" + CRLF + ;
        "<h1>Welcome to Web1 Page</h1>" + CRLF + ;
        "<p>This HTML was generated from a .PRG file!</p>" + CRLF + ;
        "</body></html>" + CRLF)

    FClose(nHandle)
    ? "HTML file created: ", cFile
RETURN
