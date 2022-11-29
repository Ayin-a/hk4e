--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||	filename:	ConstellationPattern
||	owner: 		weiwei.sun
||	description: 	莫娜岛星座图案连线逻辑。连线逻辑和ConstellationMachine相同，不含解谜逻辑。 
||	LogName:	## [ConstellationPattern]
||	Protection:	
=======================================]]

--[[
local	defs = {
	--是否使用移动模式
	is_movable = 1,
	--连线形态 静态模式
	patterns = 
	{
		--形态1
		[1] = 
		{
			[点1的configID] = 连哪个configID,
			[点2的configID] = 连哪个configID,
		},
		--形态2
		[2] = 
		{
			[点1的configID] = 连哪个configID,
			[点2的configID] = 连哪个configID,
		}
	},
		--连线形态 移动模式
		--在静态模式的基础上，加一个切换过程，表现是先关闭所有连线，然后开始点阵移动，等大家都停下来后，按pattern2连线
		--本质上和ConstellationMachine的逻辑一样
	patterns = 
	{
		--形态1
		[1] = 
		{
			[点1的configID] = {connect = , point_array = 1, point_id = {1},} ,
		},
	}，
	--是否在GroupLoad时回到pattern 1
	reset_onload=1,

}
]]
local cfg =
{
	connect_sgv = "SGV_Constellation_Target",--物件在Group中找此SGV的对象进行连线
	mark_sgv = "SGV_Constellation_Mark",--物件自身的SGV
}

local extraTriggers={
  --{ config_id = 8000001, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Option", trigger_count = 0 },
  { config_id = 8000002, name = "Reach_Point", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_Reach_Point", trigger_count = 0 },
  { config_id = 8000003, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
  { config_id = 8000004, name = "Pattern_Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "pattern", condition = "", action = "action_Pattern_Variable_Change", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		for k,v in pairs(suites) do 
			table.insert(v.triggers,extraTriggers[i].name)
		end	
	end
	--代表现在要显示连线样式几
	table.insert(variables,{ config_id = 50000001, name = "pattern", value = 1})
end

function action_Group_Load(context, evt)
	ScriptLib.SetGroupTempValue(context, "ready_count", 0, {})
	if 1 == defs.reset_onload then
		 ScriptLib.SetGroupVariableValue(context, "pattern", 1)
	end

	--计算总数
	local total = 0
	for k,v in pairs(defs.patterns[1]) do
		total = total + 1
	end
	ScriptLib.SetGroupTempValue(context, "total", total, {})

	if nil ~= defs.is_movable then
		LF_InitPosition(context)
	end

	return 0
end

--根据当前pattern，设置物件位置
function LF_InitPosition(context)
	local pattern_index = ScriptLib.GetGroupVariableValue(context, "pattern")
	ScriptLib.SetGroupTempValue(context, "turning_num", 0, {})
	for k, v in pairs(defs.patterns[pattern_index]) do
		if 0 ~= v.point_array then
			--开始移动
			ScriptLib.SetPlatformPointArray(context, k, v.point_array, v.point_id, { route_type = 0, turn_mode = false })
			--增加一个正在移动的机关计数
			ScriptLib.ChangeGroupTempValue(context, "turning_num", 1, {})
		end
	end
	return 0
end

function LF_InitPattern(context, pattern_index)

	ScriptLib.PrintContextLog(context, "## [ConstellationPattern] LF_InitPattern. pattern@"..pattern_index)
	if pattern_index > #defs.patterns then
		pattern_index = #defs.patterns
		ScriptLib.PrintContextLog(context, "## [ConstellationPattern] #WARN# Pattern index overflow. Set to pattern@"..pattern_index)
	end
	if pattern_index < 1 then 
		pattern_index = 1
		ScriptLib.PrintContextLog(context, "## [ConstellationPattern] #WARN# Pattern less than 1. Set to 1.")
	end
	LF_SetConnectMark(context, pattern_index)
	LF_SetConnectTarget(context, pattern_index)

	return 0
end
--当所有ability准备好时，再分配GV
function SLC_ConstellationPattern_Ready(context)

	local pattern_index = ScriptLib.GetGroupVariableValue(context, "pattern")

	ScriptLib.ChangeGroupTempValue(context, "ready_count", 1, {})
	local ready = ScriptLib.GetGroupTempValue(context, "ready_count", {})
	local total = ScriptLib.GetGroupTempValue(context, "total", {})
	ScriptLib.PrintContextLog(context, "## [ConstellationPattern] SLC_ConstellationPattern_Ready. ready@"..ready.." total@"..total)
	if ready >= total then
		LF_InitPattern(context, pattern_index)
	end

	return 0
end

function action_Pattern_Variable_Change(context, evt)
	if evt.param1 == evt.param2 then
		return 0
	end

	local pattern_index = evt.param1
	ScriptLib.PrintContextLog(context, "## [ConstellationPattern] Pattern_Variable_Change. pattern@"..pattern_index)
	if pattern_index > #defs.patterns then
		pattern_index = #defs.patterns
		ScriptLib.PrintContextLog(context, "## [ConstellationPattern] #WARN# Pattern index overflow. Set to pattern@"..pattern_index)
	end
	if pattern_index < 1 then 
		pattern_index = 1
		ScriptLib.PrintContextLog(context, "## [ConstellationPattern] #WARN# Pattern less than 1. Set to 1.")
	end

	if nil ~= defs.is_movable then 
		LF_MoveByPatternIndex(context, pattern_index)
	else
		LF_SetConnectTarget(context, pattern_index)
	end
	
	return 0
end

--每个机关给自己上标识， 给其他机关找目标用
function LF_SetConnectMark(context, pattern_index)
	for k, v in pairs(defs.patterns[pattern_index]) do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, cfg.mark_sgv, k)
	end
	return 0
end

--根据当前pattern，为所有机关分配连线SGV
function LF_SetConnectTarget(context, pattern_index)

	if nil ~= defs.is_movable then 
		for k, v in pairs(defs.patterns[pattern_index]) do
			--设置新的连线对象
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, cfg.connect_sgv, v.connect)
			--ScriptLib.PrintContextLog(context, "## [ConstellationPattern] LF_SetConnectTarget: gear@"..k.." target@"..v.connect)
		end
	else
		for k, v in pairs(defs.patterns[pattern_index]) do
			--设置新的连线对象
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, cfg.connect_sgv, v)
			--ScriptLib.PrintContextLog(context, "## [ConstellationPattern] LF_SetConnectTarget: gear@"..k.." target@"..v)
		end
	end

	return 0
end

--移动结束
function action_Reach_Point(context, evt)
	--排除非连线机关
	if false == LF_CheckIsGear(context, evt.param1) then 
		return 0
	end
	
	local pattern_index = ScriptLib.GetGroupVariableValue(context, "pattern")
	--检查是否reach它最后一个point
	local point_table = defs.patterns[pattern_index][evt.param1].point_id
	local final_point = point_table[#point_table]
	if final_point ~= evt.param3 then
		return 0
	end

	--减少一个正在旋转的机关计数
	ScriptLib.ChangeGroupTempValue(context, "turning_num", -1, {})

	local turning_num = ScriptLib.GetGroupTempValue(context, "turning_num", {})
	ScriptLib.PrintContextLog(context, "## [ConstellationMachine] Reach_Point: Current turning_num@"..turning_num)

	--如果都转完了，设置连接关系
	if 0 == turning_num then
		LF_SetConnectTarget(context, pattern_index)
	end

	return 0
end

--检查configID是否为配置的光线机关
function LF_CheckIsGear(context, value)
	for k, v in pairs(defs.patterns[1]) do
		if k == value then
			return true
		end
	end
	return false
end

--根据patternIndex移动
function LF_MoveByPatternIndex(context, pattern_index)
	ScriptLib.SetGroupTempValue(context, "turning_num", 0, {})


	for k, v in pairs(defs.patterns[pattern_index]) do
		--关闭连线 GadgetState被LD拿去做别的用，此处用SGV使星座点失去目标
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, cfg.connect_sgv, 0)
		if 0 ~= v.point_array then
			--开始移动
			ScriptLib.SetPlatformPointArray(context, k, v.point_array, v.point_id, { route_type = 0, turn_mode = false })
			--增加一个正在旋转的机关计数
			ScriptLib.ChangeGroupTempValue(context, "turning_num", 1, {})
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)