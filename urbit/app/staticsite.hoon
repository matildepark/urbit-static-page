/+  *server, default-agent, verb
/=  index
  /^  octs
  /;  as-octs:mimes:html
  /:  /===/app/staticsite/index
  /|  /html/
      /~  ~
  ==
::
%+  verb  |
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
::
++  on-init
  ^-  (quip card:agent:gall _this)
  :_  this
  [%pass / %arvo %e %connect [~ /'~staticsite'] %staticsite]~
::
++  on-save   on-save:def
++  on-load   on-load:def
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card:agent:gall _this)
  ?.  ?=(%handle-http-request mark)
    (on-poke:def mark vase)
  =+  !<([eyre-id=@ta =inbound-request:eyre] vase)
  :_  this
  %+  give-simple-payload:app  eyre-id
  (html-response:gen index)
::
++  on-watch
  |=  =path
  ^-  (quip card:agent:gall _this)
  ?:  ?=([%http-response *] path)
    [~ this]
  (on-watch:def path)
::
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card:agent:gall _this)
  ?.  ?=(%bound +<.sign-arvo)
    (on-arvo:def wire sign-arvo)
  [~ this]
::
++  on-fail   on-fail:def
--