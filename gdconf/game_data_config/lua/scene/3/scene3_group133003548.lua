-- 基础信息
local base_info = {
	group_id = 133003548
}

-- Trigger变量
local defs = {
	crucible_timer = {45,165,285,405,525,650,775},
	crucible_timer_prepare = 2,
	gadget_crucible = 548001,
	stage_extra_group = 133003549,
	timer_extra_group = 133003550,
	prepare_extra_group = 133003554,
	gadget_prepare = 548015,
	group_id = 133003548,
	stage_tide_group = 133003555
}

-- DEFS_MISCS
points = {
	{config_id = 1, pos = {x= 2349.235, y= 283.8984, z= -1716.95}, rot = {x=0,y=189.4293,z=0} },
	{config_id = 2, pos = {x= 2342.74854, y= 283.898438, z= -1730.98035}, rot = {x=0,y=0,z=0} }, 
	{config_id = 3, pos = { x = 2346.308, y = 283.784, z = -1735.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

local stage_table = {
	[1] = { name = "Water",   suite = {[1]={2}, [2]={3}} },
	[2] = { name = "Fire",    suite = {[1]={4,5}, [2]={4,5}, [3]={4,5}} },
	[3] = { name = "Electric",suite = {[1]={6,7}, [2]={6,7}, [3]={6,7}} },
	[4] = { name = "Ice", 	  suite = {[1]={8,9}, [2]={8,9}, [3]={8,9}} },
	[5] = { name = "Wind", 	  suite = {} },
	[6] = { name = "Rock", 	  suite = {} },
	[7] = { name = "Grass",   suite = {} }
} 

local timer_table = {
	[1] = {2},
	[2] = {2},
	[3] = {2},
                [4] = {2},
	[5] = {2},
	[6] = {2},
                [7] = {2}
}


local timer_notify_str = "timer_notify"
local timer_suite_str = "timer_suite"
local timer_counter = "timer_counter"


function LF_random_stage_suite(table, elem, stage)
	local array = table[elem].suite[stage]
	if #array == 0 or array == nil then
		return -1
	end
	math.randomseed(tostring(os.time()):reverse():sub(1,5))
	return array[math.random(1,#array)]
end

function LF_random_timer_suite(table, stage)
	local array = table[stage]
	if #array == 0 or array == nil then
		return -1
	end
	math.randomseed(tostring(os.time()):reverse():sub(1,5))
	return array[math.random(1,#array)]
end

function LF_set_timer(context)
	local i = ScriptLib.GetGroupVariableValue(context, timer_counter)
	if i > #defs.crucible_timer then
		ScriptLib.PrintLog("## undefined_crucible_timer !")
		return -1
	elseif i == #defs.crucible_timer then
		return -1
	end

	local duration = 0
	if i <= 1 then
		duration = defs.crucible_timer[i]
	else
		duration = defs.crucible_timer[i+1] - defs.crucible_timer[i]
	end

	local dur = duration - defs.crucible_timer_prepare
	if dur <= 0 then 
		ScriptLib.PrintLog("## crucible_timer_duration_illegal !")
		return -1
	end

	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, timer_notify_str, dur)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, timer_suite_str, duration)
	ScriptLib.ChangeGroupVariableValue(context, timer_counter, 1)
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "Water", value = 100, no_refresh = false },
	{ config_id = 2, name = "Fire", value = 0, no_refresh = false },
	{ config_id = 3, name = "Electric", value = 0, no_refresh = false },
	{ config_id = 4, name = "Ice", value = 0, no_refresh = false },
	{ config_id = 5, name = "Wind", value = 0, no_refresh = false },
	{ config_id = 6, name = "Rock", value = 0, no_refresh = false },
	{ config_id = 7, name = "Grass", value = 0, no_refresh = false },
	{ config_id = 8, name = "stage_extra", value = 0, no_refresh = false },
	{ config_id = 9, name = "timer_extra", value = 0, no_refresh = false },
	{ config_id = 10, name = "timer_counter", value = 1, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 炼金炉自身增补内容,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================