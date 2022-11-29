-- 基础信息
local base_info = {
	group_id = 305001001
}

-- Trigger变量
local defs = {
	crucible_timer = {45,165,285,405,525,650,775,855},
	bonus_time = 60,
	["stage_group_Water"] = 133003554,
	["stage_group_Fire"] = 133003555,
	["stage_group_Electric"] = 133003556,
	["stage_group_Ice"] = 133003557,
	stage_group_bonus = 133003549,
	timer_extra_group = 133003568,
	monster_bonus_group = 133003550,
	crucible_timer_info = {10,5},
	group_id = 305001001,
	gadget_crucible = 1001,
	gadget_prepare = 1015,
	stage_bonus_suite = 10
}

-- DEFS_MISCS
points = {
	{config_id = 1, pos = {x= 2349.235, y= 283.8984, z= -1716.95}, rot = {x=0,y=189.4293,z=0} },
	{config_id = 2, pos = {x= 2342.74854, y= 283.898438, z= -1730.98035}, rot = {x=0,y=0,z=0} }, 
	{config_id = 3, pos = { x = 2346.308, y = 283.784, z = -1735.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

--bonus阶段的怪物配置
defs.monster_bonus_suite = {
	[1] = { name = "Water",   suite = {[1]={2}, [2]={6}} },
	[2] = { name = "Fire",    suite = {[1]={3}, [2]={7}} },
	[3] = { name = "Electric",suite = {[1]={4}, [2]={8}} },
	[4] = { name = "Ice", 	  suite = {[1]={5}, [2]={9}} },
	[5] = { name = "Wind", 	  suite = {} },
	[6] = { name = "Rock", 	  suite = {} },
	[7] = { name = "Grass",   suite = {} }
}

--stage创建的怪物,跟上边的defs要对应上
local stage_table = {
	[1] = { name = "Water",   suite = {[1]={2}, [2]={3}} },
	[2] = { name = "Fire",    suite = {[1]={2}, [2]={3}} },
	[3] = { name = "Electric",suite = {[1]={2}, [2]={3}} },
	[4] = { name = "Ice", 	  suite = {[1]={2}, [2]={3}} },
	[5] = { name = "Wind", 	  suite = {} },
	[6] = { name = "Rock", 	  suite = {} },
	[7] = { name = "Grass",   suite = {} }
} 
--对应549，击杀大怪之后的刷大球阶段
local bonus_table = {
	[1] = { name = "Water", suite = {[1]={2}, [2]={6}} },
	[2] = { name = "Fire", suite = {[1]={3}, [2]={7}} },
	[3] = { name = "Electric", suite = {[1]={4}, [2]={8}} },
	[4] = { name = "Ice", suite = {[1]={5}, [2]={9}} },
	[5] = { name = "Wind", suite = {[1]={2}, [2]={2}} },
	[6] = { name = "Rock", suite = {[1]={2}, [2]={2}} },
	[7] = { name = "Grass", suite = {[1]={2}, [2]={2}} }
}

local timer_table = {
	[1] = {2},
	[2] = {2},
	[3] = {2},
   	[4] = {2},
	[5] = {2},
	[6] = {2},
   	[7] = {2}
}

--定时创建的timer
local timer_suite_str = "timer_suite"
--用于读取当前timer的var
local timer_counter = "timer_counter"
--用于控制当前stage杀怪的奖励阶段
local timer_bonus_str = "timer_bonus"

--元素类型字典
local elemType = {
	[1] = "Water",
	[2] = "Fire",
	[3] = "Electric",
	[4] = "Ice",
	[5] = "Wind",
	[6] = "Rock",
	[7] = "Grass"
}

function LF_random_stage_suite(context, table, elem, stage)
	local array = table[elem].suite[stage]
	if #array == 0 or array == nil then
		return -1
	end
	math.randomseed(ScriptLib.GetServerTime(context) + elem + stage)
	return array[math.random(1,#array)]
end

function LF_random_timer_suite(context, table, stage)
	local array = table[stage]
	if #array == 0 or array == nil then
		return -1
	end
	math.randomseed(ScriptLib.GetServerTime(context) + stage)
	return array[math.random(1,#array)]
end

function LF_set_timer(context)
	local i = ScriptLib.GetGroupVariableValue(context, timer_counter)
	if i > #defs.crucible_timer then
		ScriptLib.PrintLog("## undefined_crucible_timer !")
		return -1
	end
	local duration = 0
	if i <= 1 then
		duration = defs.crucible_timer[1]
	else
		duration = defs.crucible_timer[i] - defs.crucible_timer[i-1]
	end
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, timer_suite_str, duration)
	ScriptLib.ChangeGroupVariableValue(context, timer_counter, 1)
	return 0
end

function LF_initialize_stage(context)
	ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_Water, suite = 1})
	ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_Electric, suite = 1})
	ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_Fire, suite = 1})
	ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_Ice, suite = 1})
	return 0
end

function LF_initialize_extra(context)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, timer_suite_str)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, timer_bonus_str)
	LF_initialize_stage(context)
	ScriptLib.RefreshGroup(context, {group_id = defs.timer_extra_group, suite = 1})
	ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_bonus, suite = 1})
	ScriptLib.RefreshGroup(context, {group_id = defs.monster_bonus_group, suite = 1})
	return 0
end

function LF_end_play(context)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, timer_suite_str)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, timer_bonus_str)
	local g_list = {defs.stage_group_Water, defs.stage_group_Electric, defs.stage_group_Fire, defs.stage_group_Ice, defs.timer_extra_group, defs.stage_group_bonus, defs.monster_bonus_group}
	for k,v in pairs(g_list) do
		ScriptLib.KillExtraGroupSuite(context, v, ScriptLib.GetGroupSuite(context, v))
		ScriptLib.RefreshGroup(context, {group_id = v, suite = 1})
	end 
	return 0
end

function LF_Log(param1, param2)
	ScriptLib.PrintLog("## "..param1.." = "..param2)
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 21020201, pos = { x = 2366.535, y = 283.898, z = -1736.532 }, rot = { x = 0.000, y = 283.628, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031, 8016 }, area_id = 1 },
	{ config_id = 1006, monster_id = 21010701, pos = { x = 2349.113, y = 283.898, z = -1750.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 1 },
	{ config_id = 1007, monster_id = 21010502, pos = { x = 2343.297, y = 283.967, z = -1749.167 }, rot = { x = 0.000, y = 11.689, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 32, area_id = 1 },
	{ config_id = 1008, monster_id = 21010502, pos = { x = 2353.565, y = 283.898, z = -1721.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 32, area_id = 1 },
	{ config_id = 1009, monster_id = 21010502, pos = { x = 2338.003, y = 283.898, z = -1731.680 }, rot = { x = 0.000, y = 76.562, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031, 8015 }, pose_id = 32, area_id = 1 },
	{ config_id = 1036, monster_id = 21020201, pos = { x = 2367.510, y = 283.899, z = -1726.209 }, rot = { x = 0.000, y = 258.899, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031, 8016 }, area_id = 1 },
	{ config_id = 1037, monster_id = 21011001, pos = { x = 2347.741, y = 283.800, z = -1747.944 }, rot = { x = 0.000, y = 16.951, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 32, area_id = 1 },
	{ config_id = 1038, monster_id = 21010502, pos = { x = 2354.280, y = 283.708, z = -1724.815 }, rot = { x = 0.000, y = 212.042, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 32, area_id = 1 },
	{ config_id = 1039, monster_id = 21010701, pos = { x = 2362.680, y = 283.898, z = -1742.041 }, rot = { x = 0.000, y = 307.835, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 1 },
	{ config_id = 1040, monster_id = 21011002, pos = { x = 2344.533, y = 283.898, z = -1730.887 }, rot = { x = 0.000, y = 92.648, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031, 8015 }, pose_id = 32, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70330024, pos = { x = 2346.308, y = 283.784, z = -1735.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, crucible_config = {duration = 900,start_cd = 3,progress_stage = {0,5000,20000,35000}, mp_play_id = 1}, area_id = 1 },
	{ config_id = 1015, gadget_id = 70330001, pos = { x = 2346.584, y = 283.898, z = -1735.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_LUA_NOTIFY_1002", event = EventType.EVENT_GADGET_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_GADGET_LUA_NOTIFY_1002", trigger_count = 0 },
	{ config_id = 1001003, name = "GADGET_PLAY_STOP_1003", event = EventType.EVENT_GADGET_PLAY_STOP, source = "", condition = "", action = "action_EVENT_GADGET_PLAY_STOP_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "ANY_MONSTER_DIE_1004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1004", action = "action_EVENT_ANY_MONSTER_DIE_1004", trigger_count = 0 },
	{ config_id = 1001010, name = "MP_PLAY_PREPARE_INTERRUPT_1010", event = EventType.EVENT_MP_PLAY_PREPARE_INTERRUPT, source = "", condition = "", action = "action_EVENT_MP_PLAY_PREPARE_INTERRUPT_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "TIMER_EVENT_1011", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_1011", trigger_count = 0 },
	{ config_id = 1001012, name = "MP_PLAY_PREPARE_1012", event = EventType.EVENT_MP_PLAY_PREPARE, source = "", condition = "", action = "action_EVENT_MP_PLAY_PREPARE_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "MP_PLAY_BATTLE_1013", event = EventType.EVENT_MP_PLAY_BATTLE, source = "", condition = "", action = "action_EVENT_MP_PLAY_BATTLE_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "GADGET_PLAY_START_CD_1014", event = EventType.EVENT_GADGET_PLAY_START_CD, source = "", condition = "", action = "action_EVENT_GADGET_PLAY_START_CD_1014", trigger_count = 0 },
	{ config_id = 1001016, name = "ANY_MONSTER_DIE_1016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1016", action = "action_EVENT_ANY_MONSTER_DIE_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "ANY_MONSTER_DIE_1017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1017", action = "action_EVENT_ANY_MONSTER_DIE_1017", trigger_count = 0 },
	{ config_id = 1001018, name = "ANY_MONSTER_DIE_1018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1018", action = "action_EVENT_ANY_MONSTER_DIE_1018", trigger_count = 0 },
	{ config_id = 1001019, name = "ANY_MONSTER_DIE_1019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1019", action = "action_EVENT_ANY_MONSTER_DIE_1019", trigger_count = 0 },
	{ config_id = 1001020, name = "ANY_MONSTER_DIE_1020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1020", action = "action_EVENT_ANY_MONSTER_DIE_1020", trigger_count = 0 },
	{ config_id = 1001021, name = "ANY_MONSTER_DIE_1021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1021", action = "action_EVENT_ANY_MONSTER_DIE_1021", trigger_count = 0 },
	{ config_id = 1001022, name = "ANY_MONSTER_DIE_1022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1022", action = "action_EVENT_ANY_MONSTER_DIE_1022", trigger_count = 0 },
	{ config_id = 1001023, name = "ANY_MONSTER_DIE_1023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1023", action = "action_EVENT_ANY_MONSTER_DIE_1023", trigger_count = 0 },
	{ config_id = 1001024, name = "ANY_MONSTER_DIE_1024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1024", action = "action_EVENT_ANY_MONSTER_DIE_1024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Water", value = 100, no_refresh = false },
	{ config_id = 2, name = "Fire", value = 100, no_refresh = false },
	{ config_id = 3, name = "Electric", value = 100, no_refresh = false },
	{ config_id = 4, name = "Ice", value = 100, no_refresh = false },
	{ config_id = 5, name = "Wind", value = 0, no_refresh = false },
	{ config_id = 6, name = "Rock", value = 0, no_refresh = false },
	{ config_id = 7, name = "Grass", value = 0, no_refresh = false },
	{ config_id = 8, name = "timer_extra", value = 0, no_refresh = false },
	{ config_id = 9, name = "timer_counter", value = 1, no_refresh = false },
	{ config_id = 10, name = "stage_counter", value = 0, no_refresh = false },
	{ config_id = 11, name = "elem_counter", value = 0, no_refresh = false },
	{ config_id = 12, name = "stage_bonus_suite", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = 炼金炉核心逻辑,
		monsters = { },
		gadgets = { 1001 },
		regions = { },
		triggers = { "GADGET_LUA_NOTIFY_1002", "GADGET_PLAY_STOP_1003", "ANY_MONSTER_DIE_1004", "MP_PLAY_PREPARE_INTERRUPT_1010", "TIMER_EVENT_1011", "MP_PLAY_PREPARE_1012", "MP_PLAY_BATTLE_1013", "GADGET_PLAY_START_CD_1014", "ANY_MONSTER_DIE_1016", "ANY_MONSTER_DIE_1017", "ANY_MONSTER_DIE_1018", "ANY_MONSTER_DIE_1019", "ANY_MONSTER_DIE_1020", "ANY_MONSTER_DIE_1021", "ANY_MONSTER_DIE_1022", "ANY_MONSTER_DIE_1023", "ANY_MONSTER_DIE_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 炼金炉自身增补内容,
		monsters = { 1005, 1006, 1007, 1008, 1009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1004", "ANY_MONSTER_DIE_1016", "ANY_MONSTER_DIE_1017", "ANY_MONSTER_DIE_1018", "ANY_MONSTER_DIE_1019", "ANY_MONSTER_DIE_1020", "ANY_MONSTER_DIE_1021", "ANY_MONSTER_DIE_1022", "ANY_MONSTER_DIE_1023", "ANY_MONSTER_DIE_1024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_LUA_NOTIFY_1002(context, evt)
	if evt.param1 ~= 100 then --stage变化出大怪阶段
		--阶段变化存入stage中
		ScriptLib.SetGroupVariableValue(context, "stage_counter", evt.param3)
		--处理阶段元素信息给大怪死后用
		ScriptLib.SetGroupVariableValue(context, "elem_counter", evt.param1)
		--大怪出场提示
		ScriptLib.ShowTemplateReminder(context, 3, defs.crucible_timer_info)
		--每次点名stage内容都要初始化
		ScriptLib.CancelGroupTimerEvent(context, defs.group_id, timer_bonus_str)
		ScriptLib.SetGroupVariableValue(context, "timer_extra", 0)
		LF_initialize_stage(context)
		ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_bonus, suite = 1})
		ScriptLib.RefreshGroup(context, {group_id = defs.monster_bonus_group, suite = 1})
		ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
		--怪物不在任何suite中,只能用kill方法处理,如果想remove则需要填在一个suite中
		ScriptLib.KillGroupEntity(context, { group_id = defs.group_id,  kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER})
		--su_group用于从对应的元素group读取资源,转义param1后组装str
		local su_group = defs["stage_group_"..elemType[evt.param1]]
		LF_Log("notify_param1", evt.param1)
		LF_Log("notify_elem", elemType[evt.param1])
		LF_Log("notify_group", su_group)
		--读阶段随机表,param1位发来的元素,param3为发来的阶段
		local su = LF_random_stage_suite(context, stage_table, evt.param1, evt.param3)
		LF_Log("notify_suite", su)
		if su == -1 then
			ScriptLib.PrintLog("## stage_table_overflow != "..evt.param1.." "..evt.param3)
			return -1
		end
		ScriptLib.RefreshGroup(context, {group_id = su_group, suite = su})
	else --怪物死亡奖励阶段
		LF_Log("notify_param2", evt.param2)
		local st = ScriptLib.GetGroupVariableValue(context, "stage_counter")
		LF_Log("st",st)
		--param2来自stage所给的元素信息
		local su = LF_random_stage_suite(context, bonus_table, evt.param2, st)
		--根据死亡的stage怪物创建计时器与bonus内容
		LF_Log("notify_suite", su)
		ScriptLib.SetGroupVariableValue(context, "stage_bonus_suite", su)
		ScriptLib.RefreshGroup(context, {group_id = defs.stage_group_bonus, suite = defs.stage_bonus_suite})
		--bonus出球提示
		ScriptLib.ShowTemplateReminder(context, 2, defs.crucible_timer_info)
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, timer_bonus_str, defs.bonus_time)
		--标记当前为bonus阶段
		ScriptLib.SetGroupVariableValue(context, "timer_extra", 1)
		--清理上一点名阶段后的残余怪物
		ScriptLib.RefreshGroup(context, {group_id = defs.monster_bonus_group, suite = 1})
	end	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_PLAY_STOP_1003(context, evt)
	--全变量初始化
	ScriptLib.SetGroupVariableValue(context, "timer_extra", 0)
	ScriptLib.SetGroupVariableValue(context, "timer_counter", 1)
	ScriptLib.SetGroupVariableValue(context, "stage_counter", 0)
	ScriptLib.SetGroupVariableValue(context, "elem_counter", 0)
	ScriptLib.SetGroupVariableValue(context, "stage_bonus_suite", 0)
	--自身group清理
	ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
	if evt.param3 == 0 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_crucible, 202)
		LF_initialize_extra(context)
	elseif evt.param3 == 1 then
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.GadgetPlayUidOp(context, defs.group_id, defs.gadget_crucible, uid_list, 1, "random_buff", {})
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_crucible, 203)
		LF_end_play(context)
	end
	ScriptLib.KillGroupEntity(context, { group_id = defs.group_id,  kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER })
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_prepare })
	--手动清理一波额外的group
	ScriptLib.SetGadgetEnableInteract(context, defs.group_id, defs.gadget_crucible, true)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	if 1005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1036, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MP_PLAY_PREPARE_INTERRUPT_1010(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, defs.group_id, defs.gadget_crucible, true)
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1011(context, evt)
	LF_Log("## timer", evt.source_name)
	--定时器的元素凝块出现
	if evt.source_name == timer_suite_str then
		local i = ScriptLib.GetGroupVariableValue(context, timer_counter)
		LF_Log("timer_counter", i)
		--随一个本阶段的group
		local su = LF_random_timer_suite(context, timer_table, i)
		LF_Log("timer_suite", su)
		--如果当前stage奖励正在生效，则略过本次timer提示和奖励
		if ScriptLib.GetGroupVariableValue(context, "timer_extra") ~= 1 then
			ScriptLib.ShowTemplateReminder(context, 1, defs.crucible_timer_info)
			ScriptLib.RefreshGroup(context, {group_id = defs.timer_extra_group, suite = su})
		end	
		--调用下个计时器
		LF_set_timer(context)
	--stage奖励结束回收
	elseif evt.source_name == timer_bonus_str then
		ScriptLib.SetGroupVariableValue(context, "timer_extra", 0)
		--获取当前的stage
		local st = ScriptLib.GetGroupVariableValue(context,  "stage_counter")
		local el = ScriptLib.GetGroupVariableValue(context, "elem_counter")
		if st > #defs.monster_bonus_suite then
			LF_Log("st", "overflow!!")
			return -1
		end
		--stage怪物死亡后从补充group中随机一个suite
		math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1,5))
		local su = LF_random_stage_suite(context, defs.monster_bonus_suite, el, st)
		if su == -1 then
			ScriptLib.PrintLog("## Illegal bonus group")
			return -1
		end
		LF_Log("monster_bonus", su)
		ScriptLib.RefreshGroup(context, {group_id = defs.monster_bonus_group, suite = su})
	end
	return 0
end

-- 触发操作
function action_EVENT_MP_PLAY_PREPARE_1012(context, evt)
	--全变量初始化
	ScriptLib.SetGroupVariableValue(context, "timer_extra", 0)
	ScriptLib.SetGroupVariableValue(context, "timer_counter", 1)
	ScriptLib.SetGroupVariableValue(context, "stage_counter", 0)
	ScriptLib.SetGroupVariableValue(context, "elem_counter", 0)
	ScriptLib.SetGadgetEnableInteract(context, defs.group_id, defs.gadget_crucible, false)
	return 0
end

-- 触发操作
function action_EVENT_MP_PLAY_BATTLE_1013(context, evt)
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_prepare })
	ScriptLib.StartGadgetPlay(context, 0, defs.gadget_crucible)
	return 0
end

-- 触发操作
function action_EVENT_GADGET_PLAY_START_CD_1014(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_crucible, 201)
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
	LF_set_timer(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1016(context, evt)
	if 1006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1016(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1039, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1017(context, evt)
	if 1007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1017(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1037, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	if 1008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1038, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1019(context, evt)
	if 1009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1019(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1040, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1020(context, evt)
	if 1036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1020(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 10 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1021(context, evt)
	if 1039 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1021(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1006, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1022(context, evt)
	if 1007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1022(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1039, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1023(context, evt)
	if 1008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1023(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1039, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1024(context, evt)
	if 1009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1024(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1039, delay_time = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end