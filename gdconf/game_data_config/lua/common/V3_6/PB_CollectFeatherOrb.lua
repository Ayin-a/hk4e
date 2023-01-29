--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_CollectFeatherOrb
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    3.6 收集草神羽毛碎片的玩法
--||   LogName       ||    ##[PB_CollectFeatherOrb]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--Suite1 配置羽毛  Suite2 配置微粒
--[[
local defs = {
	time_limit = 20, 
	feather = 106001, --羽毛的ConfigID
	orb_gadget_id = 70290729,
	orb_nums = 5,
	end_suite = 3,
}
]]
--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local CFO_Triggers = {
	{ name = "group_load", config_id = 8000101, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000102, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ name = "any_gadget_die", config_id = 8000103, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0 },
}

function CFO_Initialize()
	for k,v in pairs(CFO_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

CFO_Initialize()

--Group加载的时候初始化值
function action_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[PB_CollectFeatherOrb.lua]:Group加载记录死亡的微粒数量")
	ScriptLib.SetGroupTempValue(context, "OrbsCollectNums", 0, {base_info.group_id})
	return 0
end


--收集微粒的时间轴
function action_time_axis_pass(context, evt) 
	--时间轴期间没有收集完毕微粒，玩法重置
	if evt.source_name == "CollectOrbs" then 
		ScriptLib.PrintContextLog(context, "##[PB_CollectFeatherOrb.lua]:时间限制内没有收集完成全部微粒，玩法重置")
		ScriptLib.SetGroupTempValue(context, "OrbsCollectNums", 0, {base_info.group_id})
		ScriptLib.ShowReminder(context, 400113)
		ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	end
	return 0
end

--检测微粒死亡
function action_any_gadget_die(context, evt) 
	ScriptLib.PrintContextLog(context, "##[PB_CollectFeatherOrb.lua]:草神羽毛微粒死亡，计数+1")
	local orb_killed_num = ScriptLib.GetGroupTempValue(context, "OrbsCollectNums", {base_info.group_id})
	ScriptLib.ChangeGroupTempValue(context, "OrbsCollectNums", 1, {base_info.group_id})
	if orb_killed_num + 1 == defs.orb_nums then 
		ScriptLib.PrintContextLog(context, "##[PB_CollectFeatherOrb.lua]:草神羽毛全部死亡，完成玩法")
--		ScriptLib.GoToGroupSuite(context, base_info.group_id, defs.end_suite)
		ScriptLib.ShowReminder(context, 400112)
		ScriptLib.EndTimeAxis(context, "CollectOrbs")
	end
	return 0
end

--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0
--靠近羽毛之后，羽毛散开，创生需要收集的结晶
function SLC_CollectStart(context)
	ScriptLib.PrintContextLog(context, "##[PB_CollectFeatherOrb.lua]:靠近草神羽毛，玩法开始")
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)
	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.feather)
	ScriptLib.InitTimeAxis(context, "CollectOrbs", {defs.time_limit}, false)
	return 0
end

--======================================================================================================================
--LevelFunctions || 自定义函数



