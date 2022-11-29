-- 基础信息
local base_info = {
	group_id = 133220491
}

-- Trigger变量
local defs = {
	group_ID = 133220491,
	gadget_1 = 491001,
	rotation_1 = 0,
	gadget_2 = 491002,
	rotation_2 = 180,
	gadget_3 = 491003,
	rotation_3 = 0,
	gadget_4 = 491008,
	rotation_4 = 180,
	gadget_5 = 491009,
	rotation_5 = 0,
	gadget_connect1 = {491003},
	gadget_connect2 = {491001,491003},
	gadget_connect3 = {491001,491009},
	gadget_connect4 = {491003,491009},
	gadget_connect5 = {491003}
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
	{ config_id = 491001, gadget_id = 70330081, pos = { x = -2324.534, y = 200.347, z = -4275.534 }, rot = { x = 0.000, y = 156.512, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 491002, gadget_id = 70330081, pos = { x = -2322.552, y = 200.299, z = -4274.681 }, rot = { x = 0.075, y = 156.512, z = 0.266 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 491003, gadget_id = 70330081, pos = { x = -2320.115, y = 200.267, z = -4274.173 }, rot = { x = 359.987, y = 156.512, z = 1.152 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 491004, gadget_id = 70330084, pos = { x = -2324.652, y = 200.323, z = -4275.589 }, rot = { x = 359.749, y = 267.573, z = 359.886 }, level = 2, area_id = 11 },
	{ config_id = 491005, gadget_id = 70330085, pos = { x = -2320.079, y = 202.151, z = -4274.157 }, rot = { x = 0.022, y = 337.373, z = 359.124 }, level = 2, area_id = 11 },
	{ config_id = 491006, gadget_id = 70211121, pos = { x = -2311.760, y = 200.295, z = -4272.980 }, rot = { x = 0.145, y = 216.738, z = 0.332 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 491008, gadget_id = 70330081, pos = { x = -2318.393, y = 200.293, z = -4272.913 }, rot = { x = 359.976, y = 156.512, z = 0.275 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 491009, gadget_id = 70330081, pos = { x = -2316.381, y = 200.294, z = -4272.058 }, rot = { x = 359.976, y = 156.512, z = 0.275 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 491011, gadget_id = 70330084, pos = { x = -2322.573, y = 200.291, z = -4274.661 }, rot = { x = 359.743, y = 264.476, z = 359.900 }, level = 27, area_id = 11 },
	{ config_id = 491012, gadget_id = 70330084, pos = { x = -2318.335, y = 200.293, z = -4272.962 }, rot = { x = 0.124, y = 0.000, z = 359.754 }, level = 27, area_id = 11 },
	{ config_id = 491013, gadget_id = 70330084, pos = { x = -2316.433, y = 200.319, z = -4272.021 }, rot = { x = 354.988, y = 288.034, z = 358.241 }, level = 27, area_id = 11 },
	{ config_id = 491014, gadget_id = 70330085, pos = { x = -2322.539, y = 202.069, z = -4274.686 }, rot = { x = 0.068, y = 336.940, z = 358.743 }, level = 27, area_id = 11 },
	{ config_id = 491015, gadget_id = 70330085, pos = { x = -2318.374, y = 202.062, z = -4272.896 }, rot = { x = 0.068, y = 336.940, z = 358.743 }, level = 27, area_id = 11 },
	{ config_id = 491016, gadget_id = 70330084, pos = { x = -2320.152, y = 200.306, z = -4274.181 }, rot = { x = 0.066, y = 201.934, z = 0.268 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1491007, name = "VARIABLE_CHANGE_491007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_491007", action = "action_EVENT_VARIABLE_CHANGE_491007" },
	{ config_id = 1491017, name = "GROUP_LOAD_491017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_491017", action = "action_EVENT_GROUP_LOAD_491017", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 491010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2319.483, y = 200.291, z = -4278.338 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1491010, name = "ENTER_REGION_491010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 491001, 491002, 491003, 491004, 491005, 491008, 491009, 491011, 491012, 491013, 491014, 491015, 491016 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_491007", "GROUP_LOAD_491017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 491006 },
		regions = { },
		triggers = { "GROUP_LOAD_491017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_491007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_491007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220491, 2)
	
	-- 针对当前group内变量名为 "waterdown" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "waterdown", 1, 133220100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133220374) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133220121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133220486) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_491017(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_491017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220491, 2)
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133220374) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133220121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133220486) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"