function main()
{
	oc ${Me.Name}: Ranger side script active.
	oc !ci -cfw ${Me.Name} -UO ${Me.Name} checkbox_ranger_focusaim FALSE
	oc !ci -cfw ${Me.Name} -UO ${Me.Name} checkbox_ranger_wreakhavoc FALSE
;add Wreck Havok to cast stack with tag wreckhavok.  
    do
    {
	while ${Me.InCombat} 
        {
			if ${Me.Ability[id,1169247006].TimeUntilReady} <= 1
				{
				 OgreBotAPI:ChangeCastStackListBoxItemByTag[${Me.Name},WreckHavok,FALSE,FALSE,TRUE]
				}
			if ${Me.Ability[id,1169247006].TimeUntilReady} > 1
				{
				OgreBotAPI:ChangeCastStackListBoxItemByTag[${Me.Name},WreckHavok,TRUE,FALSE,TRUE]
				}
			if ${Me.Ability[id,2785245381].TimeUntilReady} <= 10
				{
				OgreBotAPI:ChangeCastStackListBoxItemByTag[${Me.Name},SquadEmbargoTag,FALSE,FALSE,TRUE]
				}
			if ${Me.Ability[id,2785245381].TimeUntilReady} > 10
				{
				OgreBotAPI:ChangeCastStackListBoxItemByTag[${Me.Name},SquadEmbargoTag,TRUE,FALSE,TRUE]
				}
			if ${Me.Ability[id,2785245381].TimeUntilReady} <= 25
				{
				OgreBotAPI:ChangeCastStackListBoxItemByTag[${Me.Name},ShadebringerEmbargoTag,FALSE,FALSE,TRUE]
				}
			if ${Me.Ability[id,2785245381].TimeUntilReady} > 25
				{
				OgreBotAPI:ChangeCastStackListBoxItemByTag[${Me.Name},ShadebringerEmbargoTag,TRUE,FALSE,TRUE]
				}
			if ${Me.Maintained["Focus Aim VI"](exists)}
				{
				oc !ci -CancelMaintainedForWho ${Me.Name} "Focus Aim"
				}
			if ${Me.Maintained["Wreak Havoc"](exists)}
				{
				oc !ci -CancelMaintainedForWho ${Me.Name} "Wreak Havoc"
				}
		wait 10 
		}
        
		
	wait 50	
    }
	
    while 1
}

atom atexit()
{
	oc ${Me.Name}: Ranger side script unloaded
}
