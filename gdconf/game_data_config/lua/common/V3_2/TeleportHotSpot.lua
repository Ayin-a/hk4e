--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	TeleportHotSpot
||	owner: 		weiwei.sun
||	description: 	单向传送门的streaming热点处理
||	LogName:	## [TeleportHotSpot]
||	Protection:	
=======================================]]
--[[

local defs = {
	--传送起点
	hot_spots = 
	{
		--若teleport_gadget不为0，则检查其state是否为201。 这个设定用于防止同一地点多个门创建多个hotpoint
		[regionID] = { teleport_gadget = 0, hot_spot = 0},
	},
	--传送终点(废弃 改为SLC)
	target_region = 
	{
		-- enterRegion时移除hotSpot
		region_1, region_2
	}
}

]]


local extraTriggers = {
	{ config_id = 8000001, name = "Enter_Teleport_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Teleport_Region", trigger_count = 0 },
	{ config_id = 8000002, name = "Time_Axis_RemoveHotSpot", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_Time_Axis_RemoveHotSpot", trigger_count = 0 },
	{ config_id = 8000004, name = "Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_Gadget_Create", trigger_count = 0 },
	{ config_id = 8000005, name = "Quest_Notify_CreateHotSpot", event = EventType.EVENT_QUEST_START, source = "1301415", condition = "", action = "action_Quest_Notify_CreateHotSpot", trigger_count = 0 },
	{ config_id = 8000006, name = "Quest_Notify_DelHotSpot", event = EventType.EVENT_QUEST_FINISH, source = "1301416", condition = "", action = "action_Quest_Notify_DelHotSpot", trigger_count = 0 },
}

function LF_Initialize()	
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		if nil ~= suites[17] then 
			table.insert(suites[17].triggers, v.name)
		end
	end
end

function action_Enter_Teleport_Region(context, evt)

	if nil == defs.hot_spots[evt.param1] then
		return 0
	end

	LF_CreateHotSpot(context, evt.param1)

	return 0
end

function action_Gadget_Create(context, evt)

	if 70320041 ~= evt.param2 then
		return 0
	end
	ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 201)
	--LD流程迭代后 不保证最新创生的即当前所需传送门，有可能出现创/删顺序错误，已经将Region改成和各自传送门gadget在同一suite，只用EnterREgion，不再用GadgetCreate
	--LF_CreateHotSpotByGadget(context, evt.param1)
	return 0
end

function action_Quest_Notify_CreateHotSpot(context, evt)
	if nil == defs.hotspot_cs then 
		return 0
	end
	--先清除
	LF_ClearAllHotSpot(context)
	--创建
	local ret = ScriptLib.CreateGadget(context, { config_id = defs.hotspot_cs })
	if 0 == ret then
		ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] action_Quest_Notify_CreateHotSpot.")
		return 0
	end
	ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] action_Quest_Notify_CreateHotSpot failed! ret@"..ret)
	return 0
end

function action_Quest_Notify_DelHotSpot(context, evt)
	if nil == defs.hotspot_cs then 
		return 0
	end
	LF_ClearAllHotSpot(context)
	return 0
end

function SLC_TeleportHotSpot_NeedRemove(context)
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	--校验来源
	if 70320041 ~= gadgets[config_id].gadget_id then 
		return 0
	end
	for i, v in ipairs(defs.hot_spots) do
		if v.teleport_gadget == config_id then 
			ScriptLib.InitTimeAxis(context, "remove_"..v.hot_spot, { 5 }, false)
			return 0
		end
	end
	return 0
end

function LF_CreateHotSpot(context, region_id)

	--该region对应的hotSpot是否已经在场
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, defs.hot_spots[region_id].hot_spot) then 
		return 0
	end

	--若有teleport_gadget配置，则检查其是否存在 --不检查了 LF_ClearAllHotSpot确保每次场上只有一个就行
	--[[if nil ~= defs.hot_spots[region_id].teleport_gadget and 0 < defs.hot_spots[region_id].teleport_gadget then
		if -1 == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.hot_spots[region_id].teleport_gadget) then
			ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] LF_CreateHotSpot. Denied. region@"..region_id.." teleport_gadget@"..defs.hot_spots[region_id].teleport_gadget.." is not placed.")
			return 0
		end
	end]]

	--先清除
	LF_ClearAllHotSpot(context)
	--创建
	local ret = ScriptLib.CreateGadget(context, { config_id = defs.hot_spots[region_id].hot_spot })
	if 0 == ret then
		ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] LF_CreateHotSpot. region_id@"..region_id.." Create spot@"..defs.hot_spots[region_id].hot_spot)
	end
	
	return 0
end

function LF_CreateHotSpotByGadget(context, config_id)
	ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] LF_CreateHotSpotByGadget. config_id@"..config_id)
	for k,v in pairs(defs.hot_spots) do
		if v.teleport_gadget == config_id then
			--[[local region_eid = ScriptLib.GetEntityIdByConfigId(context, k)
			ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] LF_CreateHotSpotByGadget. region_eid@"..region_eid .. " configID@"..k)
			if 1 <= ScriptLib.GetRegionEntityCount(context, { region_eid = region_eid, entity_type = EntityType.AVATAR }) then]]
				LF_CreateHotSpot(context, k)
				return 0
			--end
		end
	end
	ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] LF_CreateHotSpotByGadget. Region not placed. config_id@"..config_id)
	return 0
end

function LF_ClearAllHotSpot(context)
	for k,v in pairs(defs.hot_spots) do
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v.hot_spot)	
	end
	if nil ~= defs.hotspot_cs then 
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.hotspot_cs)	
	end
	return 0
end

function action_Time_Axis_RemoveHotSpot(context, evt)

	local name = string.sub(evt.source_name, 1, 6)
	if "remove" ~= name then 
		return 0
	end

	local div = string.find(evt.source_name, "_")
	if nil == div then 
		return 0
	end
	local config_id = tonumber(string.sub(evt.source_name, div + 1, #evt.source_name))
	if nil == config_id then 
		return 0
	end
	ScriptLib.PrintContextLog(context,"## [TeleportHotSpot] Remove hot spot timeaxis passed. config_id@"..config_id)
	if nil == gadgets[config_id] then 
		return 0
	end
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)

	return 0
end

--用于检查value是否在目标table中
function LF_CheckIsInTable(context, value, check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

LF_Initialize()