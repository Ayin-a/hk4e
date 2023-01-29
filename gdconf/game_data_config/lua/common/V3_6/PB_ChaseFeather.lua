--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_ChaseFeather
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    追逐草神羽毛的玩法
--||   LogName       ||    ##[PB_ChaseFeather]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容

local defs = {
	feather = 108001, --草神羽毛的ID
	pointarray_id = 110200030, --草神羽毛移动的点阵ID
	target_pos = 6, --最后的目标点
	end_suite = 2, --
}

--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local CF_Triggers = {
	{ name = "group_load", config_id = 8000101, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "platform_arrival", config_id = 8000102, event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_platform_arrival", trigger_count = 0 },
	{ name = "any_gadget_die", config_id = 8000103, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0 },

}

function CF_Initialize()
	for k,v in pairs(CF_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

CF_Initialize()

function action_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:追逐羽毛Group加载，初始化")
	ScriptLib.SetGroupTempValue(context, "CurrentPos", 1, {base_info.group_id})
	ScriptLib.SetGroupTempValue(context, "TargetPos", 2, {base_info.group_id})
	ScriptLib.SetGroupTempValue(context, "ChaseStarted", 0, {base_info.group_id})
	return 0
end

--羽毛到达目标点
function action_platform_arrival(context, evt) 
	if evt.param1 ~= defs.feather then 
		return 0
	end
	if evt.param3 ~= ScriptLib.GetGroupTempValue(context, "TargetPos", {base_info.group_id}) then 
		return 0
	end
	ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:羽毛到达目标点，更新位置信息"..evt.param3)
	if evt.param3 == defs.target_pos then 
		ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:羽毛到达目标点，更新羽毛状态为可以拾取")
		ScriptLib.SetGadgetStateByConfigId(context, defs.feather, 201)
		return 0
	end 
	ScriptLib.SetGroupTempValue(context, "CurrentPos", evt.param3, {base_info.group_id})
	ScriptLib.SetGroupTempValue(context, "ChaseStarted", 0, {base_info.group_id})
	return 0
end

--羽毛从201状态死亡，完成玩法
function action_any_gadget_die(context, evt) 
	if evt.param1 == defs.feather then 
		ScriptLib.ShowReminder(context, 400112)
--		ScriptLib.GoToGroupSuite(context, base_info.group_id, defs.end_suite)
	end 
	return 0
end

--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0
--羽毛被追逐
function SLC_BeChased(context) 
	if 0 ~= ScriptLib.GetGroupTempValue(context, "ChaseStarted", {base_info.group_id}) then
		ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:羽毛正在移动")
		return 0
	end
	if 0 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.feather) then
		ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:羽毛移动完成")
		return 0
	end
	
	local cur_pos = ScriptLib.GetGroupTempValue(context, "CurrentPos", {base_info.group_id})
	if cur_pos == 1 then 
		ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:追逐开始,闪现到目标点")
		ScriptLib.SetGroupTempValue(context, "CurrentPos", 2, {base_info.group_id})
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.feather)

		local _ret,R_pos,R_rot = ScriptLib.GetPlatformArrayInfoByPointId(context, defs.pointarray_id, 2)
		local blink_pos = {x = R_pos.x, y = R_pos.y, z = R_pos.z}
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.feather, blink_pos, {x = 0, y = 0, z = 0})
		ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:闪现结束".._ret)
		return 0
	end
	ScriptLib.SetGroupTempValue(context, "ChaseStarted", 1, {base_info.group_id})
	ScriptLib.SetGroupTempValue(context, "TargetPos", cur_pos+1, {base_info.group_id})
	ScriptLib.PrintContextLog(context, "##[PB_ChaseFeather.lua]:追逐开始"..cur_pos.."to"..(cur_pos+1))
	ScriptLib.SetPlatformPointArray(context, defs.feather, defs.pointarray_id, {cur_pos, cur_pos+1}, {route_type = 0})
	ScriptLib.StartPlatform(context, defs.feather)
	return 0
end

--======================================================================================================================
--LevelFunctions || 自定义函数



