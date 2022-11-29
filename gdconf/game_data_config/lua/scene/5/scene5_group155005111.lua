-- 基础信息
local base_info = {
	group_id = 155005111
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
	{ config_id = 111001, gadget_id = 70500000, pos = { x = 477.013, y = 155.515, z = 939.729 }, rot = { x = 0.000, y = 273.310, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111002, gadget_id = 70500000, pos = { x = 628.833, y = 243.362, z = 689.993 }, rot = { x = 0.000, y = 265.570, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111003, gadget_id = 70500000, pos = { x = 680.778, y = 277.114, z = 661.529 }, rot = { x = 0.000, y = 242.375, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111004, gadget_id = 70500000, pos = { x = 508.091, y = 206.515, z = 548.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4007, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111006, gadget_id = 70500000, pos = { x = 520.703, y = 189.220, z = 633.043 }, rot = { x = 0.000, y = 72.445, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111007, gadget_id = 70500000, pos = { x = 561.595, y = 252.952, z = 482.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111008, gadget_id = 70500000, pos = { x = 603.843, y = 1942.862, z = 648.461 }, rot = { x = 0.000, y = 161.850, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111009, gadget_id = 70500000, pos = { x = 671.183, y = 255.036, z = 628.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111010, gadget_id = 70500000, pos = { x = 603.843, y = 216.594, z = 648.461 }, rot = { x = 0.000, y = 161.850, z = 0.000 }, level = 36, point_type = 4009, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111011, gadget_id = 70500000, pos = { x = 717.204, y = 259.792, z = 522.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111012, gadget_id = 70500000, pos = { x = 893.791, y = 218.214, z = 130.223 }, rot = { x = 0.000, y = 91.205, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111013, gadget_id = 70500000, pos = { x = 508.642, y = 176.674, z = 874.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111015, gadget_id = 70500000, pos = { x = 630.041, y = 207.369, z = 489.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 111016, gadget_id = 70500000, pos = { x = 901.439, y = 223.080, z = 40.882 }, rot = { x = 0.000, y = 132.198, z = 0.000 }, level = 36, point_type = 4011, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111017, name = "GATHER_111017", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_111017", trigger_count = 0 },
	{ config_id = 1111018, name = "VARIABLE_CHANGE_111018", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_111018", action = "action_EVENT_VARIABLE_CHANGE_111018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 111005, gadget_id = 70500000, pos = { x = 492.603, y = 199.238, z = 697.100 }, rot = { x = 0.000, y = 318.020, z = 0.000 }, level = 36, point_type = 4008, isOneoff = true, persistent = true, area_id = 200 },
		{ config_id = 111014, gadget_id = 70500000, pos = { x = 778.892, y = 232.241, z = 588.752 }, rot = { x = 0.000, y = 241.643, z = 0.000 }, level = 36, point_type = 4010, isOneoff = true, persistent = true, area_id = 200 }
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
		-- description = ,
		monsters = { },
		gadgets = { 111001, 111002, 111003, 111004, 111006, 111007, 111008, 111009, 111010, 111011, 111012, 111013, 111015, 111016 },
		regions = { },
		triggers = { "GATHER_111017", "VARIABLE_CHANGE_111018" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_111017(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_111018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为14
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_111018(context, evt)
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end