--- 只要在海盗门的Group中放置Require即可
---------------------
local tempTrigger = {
	{ config_id = 2460001, name = "PirateShojiOption", event = EventType.EVENT_GADGET_CREATE,
	  source = "",condition = "", action = "action_PirateShojiOption", trigger_count = 0},
	{ config_id = 2460002, name = "PirateShojiSelectOption", event = EventType.EVENT_SELECT_OPTION,
	  source = "",condition = "", action = "action_PirateShojiSelectOption", trigger_count = 0}
}

--------初始化----------
function LF_Initialize_Level()
    local firstConfigID = 2450001
    for k,v in ipairs(door) do
	    local gadgetConfig = gadgets[v]
	    gadgets[firstConfigID + 1000] = { config_id = firstConfigID + 1000, gadget_id = 70360001,pos = gadgetConfig.pos,
	                                      rot = gadgetConfig.rot, level = 1, area_id = gadgetConfig.area_id, chainConfigID = v }
	    gadgets[v].operatorConfigID = firstConfigID + 1000
	    local  singleTrigger = { config_id = firstConfigID, name = "PirateShojiStateChange" .. v, event = EventType.EVENT_GADGET_STATE_CHANGE,
	                             source = tostring(v),condition = "", action = "action_PirateShojiStateChange", trigger_count = 0}
	    table.insert(triggers, singleTrigger)
	    table.insert(suites[init_config.suite].gadgets, firstConfigID + 1000)
	    table.insert(suites[init_config.suite].triggers, singleTrigger.name)
	    firstConfigID = firstConfigID + 1
    end

	for k,v in pairs(tempTrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end


--------公用函数----------
------------响应地板玩法开始--------
-- 任意Gadget创建进入,为海盗门的上操作台
function action_PirateShojiOption(context,evt)
	ScriptLib.PrintContextLog(context, "##TD Gadget".. evt.param2 .."ConfigID为".. evt.param1 .. "创生了")
	if 70360001 == evt.param2 then
		local operatorConfigID = evt.param1
		local doorConfigID = gadgets[operatorConfigID].chainConfigID
		local gadgetState = ScriptLib.GetGadgetStateByConfigId(context, 0, doorConfigID)
		if 0 == gadgetState or 202 == gadgetState then
			local groupID = ScriptLib.GetContextGroupId(context)
			ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .."的gadgetState为"..gadgetState.. ",直接挂起操作台")
			ScriptLib.SetWorktopOptionsByGroupId(context, groupID, operatorConfigID, {1})
			return 0
		end
		ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. "的gadgetState为"..gadgetState.."无需响应")
	end
	return 0
end

-- 对应entity被改变时，重上操作台
function action_PirateShojiStateChange(context,evt)
	local doorConfigID = evt.param2
	local operatorConfigID = gadgets[doorConfigID].operatorConfigID
	ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. "被检查切换到State" .. evt.param1 )
	if 0 == evt.param1 or 202 == evt.param1 then
		local groupID = ScriptLib.GetContextGroupId(context)
		ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. "state合法，被挂起操作台")
		ScriptLib.DelWorktopOptionByGroupId(context, groupID, operatorConfigID, 1)
		ScriptLib.SetWorktopOptionsByGroupId(context, groupID, operatorConfigID, {1})
		return 0
	end
	if 201 == evt.param1 then
		ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. "门已开启，不响应")
		return 0
	end
	ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. "state不匹配，不响应")
	return 0
end

-- 任意操作台被交互时进入，与操作台交互时控制操作台
function action_PirateShojiSelectOption(context, evt)
	local operatorConfigID = evt.param1
	local doorConfigID = gadgets[operatorConfigID].chainConfigID
	local uid = evt.uid
	ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. " 操作台被玩家".. uid.. "尝试使用开关为" .. evt.param2)
	if 1 == evt.param2 and 70360169 == gadgets[doorConfigID].gadget_id then
		local groupID = ScriptLib.GetContextGroupId(context)
		local gadgetID = ScriptLib.GetGadgetStateByConfigId(context, 0, doorConfigID)
		if 0 == gadgetID then
			local isLock = ScriptLib.GetTeamAbilityFloatValue(context, uid, "_SCENEOBJ_PirateShoji_IsOpen")
			if isLock < 1 then
				-- 提示不能开门
				ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. " 无法被玩家".. uid.. "开启")
				ScriptLib.ShowReminder(context, 321715301)
			else
				-- 打开门
				ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID .. "被玩家".. uid.. "开启")
				ScriptLib.SetGadgetStateByConfigId(context, doorConfigID, 201)
				ScriptLib.DelWorktopOptionByGroupId(context, groupID, operatorConfigID, 1)
			end
		end
		if 202 == gadgetID then
			ScriptLib.PrintContextLog(context, "##TD 海盗门".. doorConfigID.. " 已解锁，无视方向直接开启")
			ScriptLib.SetGadgetStateByConfigId(context, doorConfigID, 201)
			ScriptLib.DelWorktopOptionByGroupId(context, groupID, operatorConfigID, 1)
		end
	end
	return 0
end
--------私有函数----------



LF_Initialize_Level()

--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
