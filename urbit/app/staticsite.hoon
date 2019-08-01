:: Import the server library. Declare "index" as a variable with a ford rune.
:: Attach it to index.html in /app/staticsite.
/+  *server
/=  index
  /^  octs
  /;  as-octs:mimes:html
  /:  /===/app/staticsite/index
  /|  /html/
      /~  ~
  ==
:: Declare moves the app makes with a core here. It uses %http-response and %connect.
|%
+$  move  [bone card]
+$  card
  $%  [%http-response =http-event:http]
      [%connect wire binding:eyre term]
  ==
--
:: Making a door.
|_  [bol=bowl:gall ~]
:: "this" is just syntactic sugar because "." is harder to read.
++  this  .
:: "prep" runs at start -- %connect mounts to the endpoint, /~staticsite.
++  prep
  |=  sta=*
  ^-  (quip move _this)
  :_  this
  [ost.bol %connect / [~ /'~staticsite'] %staticsite]~
::
++  bound
  |=  [wir=wire success=? binding=binding:eyre]
  ^-  (quip move _this)
  [~ this]
::
::
++  poke-handle-http-request
  |=  =inbound-request:eyre
  ^-  (quip move _this)
  ::
  =+  request-line=(parse-request-line url.request.inbound-request)
  :_  this
  [ost.bol %http-response (html-response:app index)]~
--