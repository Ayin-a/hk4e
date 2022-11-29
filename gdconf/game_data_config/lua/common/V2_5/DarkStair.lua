--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]

function SLC_DarkStair_SetState( context )
	ScriptLib.PrintContextLog(context, "## DS_LOG : ServerLuaCall Start2222")

	ScriptLib.PrintContextLog(context, "## DS_LOG : target_eid = "..context.target_entity_id)

	local configID = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })

	ScriptLib.PrintContextLog(context, "## DS_LOG : configID = "..configID)

	local curState = ScriptLib.GetGadgetStateByConfigId(context, 0, configID)

	ScriptLib.PrintContextLog(context, "## DS_LOG : curState = "..curState)

	local curIndex = 1

	for i,v in ipairs(stair_mode[configID]) do
		if v==curState then

			curIndex = i

			break
		end
	end
	ScriptLib.PrintContextLog(context, "## DS_LOG : curIndex = "..curIndex)

	if curIndex + 1 <= #stair_mode[configID] then
		curIndex = curIndex + 1
	else
		curIndex = 1
	end
	ScriptLib.PrintContextLog(context, "## DS_LOG : nextIndex = "..curIndex.." state = "..stair_mode[configID][curIndex])

	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, configID, stair_mode[configID][curIndex])

	return 0 

end