-- 基础信息
local base_info = {
	group_id = 155006002
}

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
	{ config_id = 2002, gadget_id = 70500000, pos = { x = 366.059, y = 147.569, z = -187.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2003, gadget_id = 70500000, pos = { x = 471.041, y = 174.284, z = -293.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2005, gadget_id = 70500000, pos = { x = 189.814, y = 115.228, z = -304.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2006, gadget_id = 70500000, pos = { x = 236.987, y = 202.959, z = -311.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2007, gadget_id = 70500000, pos = { x = 549.314, y = 157.905, z = -329.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2009, gadget_id = 70500000, pos = { x = 546.768, y = 179.776, z = -423.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2010, gadget_id = 70500000, pos = { x = 583.844, y = 126.670, z = -512.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2012, gadget_id = 70500000, pos = { x = 337.464, y = 165.045, z = -219.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2014, gadget_id = 70500000, pos = { x = 401.493, y = 140.490, z = -223.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2015, gadget_id = 70500000, pos = { x = 186.826, y = 262.112, z = -375.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2016, gadget_id = 70500000, pos = { x = 180.119, y = 194.154, z = -317.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 2017, gadget_id = 70500000, pos = { x = 197.361, y = 207.882, z = -455.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "GATHER_2004", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_2004", trigger_count = 0 },
	{ config_id = 1002018, name = "VARIABLE_CHANGE_2018", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_2018", action = "action_EVENT_VARIABLE_CHANGE_2018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2001, gadget_id = 70500000, pos = { x = 473.047, y = 182.276, z = -222.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 2008, gadget_id = 70500000, pos = { x = 341.694, y = 172.458, z = -324.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 2011, gadget_id = 70500000, pos = { x = 594.495, y = 196.833, z = -408.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 2013, gadget_id = 70500000, pos = { x = 527.711, y = 153.075, z = -207.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 2020, gadget_id = 70500000, pos = { x = 255.940, y = 208.556, z = -231.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = ,
		monsters = { },
		gadgets = { 2002, 2003, 2005, 2006, 2007, 2009, 2010, 2012, 2014, 2015, 2016, 2017 },
		regions = { },
		triggers = { "GATHER_2004", "VARIABLE_CHANGE_2018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发操作
function action_EVENT_GATHER_2004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为12
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 12 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2018(context, evt)
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end