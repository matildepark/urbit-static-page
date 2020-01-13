/+  *server, default-agent, verb
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
  |^  ::  exclusively handle get requests. try to load the requested file from
      ::  clay, under /app/staticsite. if the requested file doesn't exist, or
      ::  it's a different kind of request, respond with 404.
      ::
      ?.  ?=(%'GET' method.request.inbound-request)
        not-found:gen
      =/  =request-line
        %-  parse-request-line
        url.request.inbound-request
      =/  ext=@ta
        (fall ext.request-line %html)
      =/  file=(unit octs)
        ?.  ?=([%'~staticsite' *] site.request-line)  ~
        (get-file-at /app/[dap.bowl] t.site.request-line ext)
      ?~  file  not-found:gen
      ?+  ext  not-found:gen
        %html  (html-response:gen u.file)
        %css   (css-response:gen u.file)
        %js    (js-response:gen u.file)
      ==
  ::
  ++  get-file-at
    |=  [base=path file=path ext=@ta]
    ^-  (unit octs)
    ::  only support html, css and js files for now.
    ::  other filetypes might need more work to get as octs.
    ::
    ?.  ?=(?(%html %css %js) ext)
      ~
    =/  =path
      :*  (scot %p our.bowl)
          q.byk.bowl
          (scot %da now.bowl)
          (snoc (weld base file) ext)
      ==
    ?.  .^(? %cu path)
      ~
    %-  some
    %-  as-octs:mimes:html
    .^(@ %cx path)
  --
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
