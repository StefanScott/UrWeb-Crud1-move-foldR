scott@debian:~/wrk/urweb/_CrudWidgetTxn/crudWidgetTxn.006.002.TRY.form-mv-pre-rtrn$ urweb -dbms postgres -db "host=localhost port=5432 user=scott password='pw' dbname=crud_widget_txn_1" crudWidgetTxn1
/home/scott/wrk/urweb/_CrudWidgetTxn/crudWidgetTxn.006.002.TRY.form-mv-pre-rtrn/crudWidgetTxn.ur:63:18: (to 73:12) Unification failure
Expression: 
foldR[[(Type * Type)]]
 [(fn $x :: (Type * Type) =>
    {Nam : string, 
      Show :
       $x.1 -> xml ([Dyn = (), MakeForm = (), Body = ()]) ([]) ([]), 
      Widget :
       nm :: Name ->
        xml ([Dyn = (), Body = (), Form = ()]) ([]) ([nm = $x.2]), 
      Parse : $x.2 -> $x.1, Inject : sql_injectable $x.1})]
 [(fn cols :: {(Type * Type)} =>
    xml ([]) ([]) (map (fn t :: (Type * Type) => t.2) cols))]
 (fn nm :: Name =>
   fn t :: (Type * Type) =>
    fn rest :: {(Type * Type)} =>
     fn col :
      {Nam : string, 
        Show :
         t.1 -> xml ([Dyn = (), MakeForm = (), Body = ()]) ([]) ([]), 
        Widget :
         nm :: Name ->
          xml ([Dyn = (), Body = (), Form = ()]) ([]) ([nm = t.2]), 
        Parse : t.2 -> t.1, Inject : sql_injectable t.1} =>
      fn acc :
       xml ([Body = (), Dyn = (), Form = ()]) ([])
        (map (fn t :: (Type * Type) => t.2) rest) =>
       Basis.join [[Body = (), Dyn = (), Form = ()]] [[]] [[]]
        [([nm = t.2]) ++ map (fn t :: (Type * Type) => t.2) rest]
        (Basis.cdata [[Body = (), Dyn = (), Form = ()]] [[]] "\n")
        (Basis.join [[Body = (), Dyn = (), Form = ()]] [[]] [[]]
          [([nm = t.2]) ++ map (fn t :: (Type * Type) => t.2) rest]
          (Basis.cdata [[Body = (), Dyn = (), Form = ()]] [[]]
            "          ")
          (Basis.join [[Body = (), Dyn = (), Form = ()]] [[]]
            [[nm = t.2]] [map (fn t :: (Type * Type) => t.2) rest]
            (Basis.tag [[]]
              [[Data = data_attr, Id = id, Title = string, 
                 Role = string, Onblur = transaction {}, 
                 Onfocus = transaction {}, 
                 Onclick =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Oncontextmenu =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Ondblclick =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmousedown =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmouseenter =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmouseleave =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmousemove =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmouseout =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmouseover =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onmouseup =
                  {ScreenX : int, ScreenY : int, ClientX : int, 
                    ClientY : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool, 
                    Button : mouseButton} -> transaction {}, 
                 Onkeydown =
                  {KeyCode : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool} -> transaction {}, 
                 Onkeypress =
                  {KeyCode : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool} -> transaction {}, 
                 Onkeyup =
                  {KeyCode : int, CtrlKey : bool, ShiftKey : bool, 
                    AltKey : bool, MetaKey : bool} -> transaction {}, 
                 Onresize = transaction {}, Onscroll = transaction {}]]
              [[Body = (), Dyn = (), Form = ()]]
              [[Body = (), Dyn = (), Form = ()]] [[]] [[]] [[]]
              [[nm = t.2]] Basis.null (Basis.None [signal css_class])
              Basis.noStyle (Basis.None [signal css_style]) {}
              (li [[Dyn = (), Form = ()]] {})
              (Basis.join [[Dyn = (), Body = (), Form = ()]] [[]]
                [[]] [[nm = t.2]]
                (Basis.cdata [[Dyn = (), Body = (), Form = ()]] [[]]
                  " ")
                (Basis.join [[Dyn = (), Body = (), Form = ()]] [[]]
                  [[]] [[nm = t.2]]
                  (cdata [[Dyn = (), Body = (), Form = ()]] [[]]
                    col.#Nam)
                  (Basis.join [[Dyn = (), Body = (), Form = ()]] [[]]
                    [[]] [[nm = t.2]]
                    (Basis.cdata [[Dyn = (), Body = (), Form = ()]]
                      [[]] ": ") (col.#Widget [nm])))))
            (Basis.join [[Body = (), Dyn = (), Form = ()]]
              [<UNIF:U531::{Type}>] [[]]
              [map (fn t :: (Type * Type) => t.2) rest]
              (Basis.cdata [[Body = (), Dyn = (), Form = ()]]
                [<UNIF:U531::{Type}>] "\n")
              (Basis.join [[Body = (), Dyn = (), Form = ()]]
                [<UNIF:U531::{Type}>] [[]]
                [map (fn t :: (Type * Type) => t.2) rest]
                (Basis.cdata [[Body = (), Dyn = (), Form = ()]]
                  [<UNIF:U531::{Type}>] "          ")
                (Basis.join [[Body = (), Dyn = (), Form = ()]]
                  [<UNIF:U531::{Type}>]
                  [map (fn t :: (Type * Type) => t.2) rest] [[]]
                  (useMore [[Body = (), Dyn = (), Form = ()]] [[]]
                    [<UNIF:U531::{Type}>]
                    [map (fn t :: (Type * Type) => t.2) rest] acc)
                  (Basis.join [[Body = (), Dyn = (), Form = ()]]
                    [<UNIF:U531::{Type}> ++
                      map (fn t :: (Type * Type) => t.2) rest] [[]]
                    [[]]
                    (Basis.cdata [[Body = (), Dyn = (), Form = ()]]
                      [<UNIF:U531::{Type}> ++
                        map (fn t :: (Type * Type) => t.2) rest] "\n")
                    (Basis.cdata [[Body = (), Dyn = (), Form = ()]]
                      [<UNIF:U531::{Type}> ++
                        map (fn t :: (Type * Type) => t.2) rest]
                      "        ")))))))) (Basis.cdata [[]] [[]] "")
 [M.cols] M.fl M.cols
  Have con: 
xml ([]) ([]) (map (fn t :: (Type * Type) => t.2) M.cols)
  Need con:  <UNIF:U408::Type -> Type> <UNIF:U409::Type>
Kind unification failure
Have:  {Type} -> Type
Need:  Type -> Type
Incompatible kinds
Kind 1:  {Type}
Kind 2:  Type
scott@debian:~/wrk/urweb/_CrudWidgetTxn/crudWidgetTxn.006.002.TRY.form-mv-pre-rtrn$ 
