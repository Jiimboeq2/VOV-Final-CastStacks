function main()

{
    ;Checks combat status

 while ${Me.InCombat} == True

{
    ;Checks if the current player has W.F up during sav dump
if !${Me.Maintained["Savagery Freeze"](exists)}

Wait  100

 oc !c -cancelmaintained \"Warder's Ferocity\"
;cancels buff to resume "Normal" pet stuff.
}
}
