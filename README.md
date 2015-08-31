**Minimal modification to Crud1:**  

**Move a `@foldR` call before `return` - **  

**gives Kind unification error "Have Type -> Type; Need {Type} -> Type"**  

I am attempting make a minimal modification to the Crud1 demo, by moving the call to `@foldR` in `list()` to *before* the `return` statement.

BEFORE:
```
  return <xml> (* <= the `return` *)
  ...
  {@foldR  (* <= call to `@foldR`, will be moved *above* the `return` *)
      [ colMeta ] 
      [ fn cols => xml form [] (map snd cols) ]
      ( fn [nm :: Name] [t ::_] [rest ::_] [[nm] ~ rest] (col : colMeta t) acc => 
        <xml>
          <li> {cdata col.Nam}: {col.Widget [nm]}</li>
          {useMore acc}
        </xml> )
      <xml/>
      M.fl 
      M.cols} 
  ...
  </xml>
```
AFTER:
```
formFields <- @foldR (* <= call to `@foldR`, now moved *above* the `return` *)
  [ colMeta ] 
  [ fn cols => xml form [] (map snd cols) ]
  ( fn [nm :: Name] [t ::_] [rest ::_] [[nm] ~ rest] (col : colMeta t) acc => 
    <xml>
      <li> {cdata col.Nam}: {col.Widget [nm]}</li>
      {useMore acc}
    </xml> )
  <xml/>
  M.fl 
  M.cols;
  return <xml> (* <= the `return` *)
  ...
  {formFields} (* <= call to `@foldR` was originally here *)
  ...
  </xml>
```
I created a GitHub with 2 commits, to illustrate the modification:

  - commit 0: the original Crud1 (simplified to only do SELECT and INSERT); 

  - commit 1: the modified Crud1 - Now, in function `list()`, the call to `@foldR` which computes the form fields has been moved to *before* the `return`. This gives following compile error:

    https://github.com/StefanScott/UrWeb-Crud1-move-foldR/commit/04ca85962a5c95e8144c6e2a29df729d631b6187#diff-74e1ef1a69438025793099ad624ad8bcR63

The minimally modified version gives a kind unification failure:

    Have con: 
```
    xml ([Dyn = (), Body = (), Form = ()]) ([])
     (map (fn t :: (Type * Type) => t.2) M.cols)
```
    Need con:  

    <UNIF:U408::Type -> Type> <UNIF:U409::Type>

    Kind unification failure

    Have:  {Type} -> Type
    Need:  Type -> Type

This appears to involve the second argument to `@foldR`, which is:
```
  [ fn cols => xml form [] (map snd cols) ]
```
I thought that merely moving a chunk of code before a `return` statement like this wouldn't change much, so I don't understand what might be causing this kind unification failure in the modified version.

Thanks for any help!
