-- 基础信息
local base_info = {
	group_id = 133225066
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
	{ config_id = 66001, gadget_id = 70217011, pos = { x = -6274.900, y = 222.477, z = -2932.808 }, rot = { x = 345.946, y = 88.797, z = 336.407 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 66003, gadget_id = 70217011, pos = { x = -6243.480, y = 235.684, z = -2952.046 }, rot = { x = 352.040, y = 23.450, z = 14.481 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 66004, gadget_id = 70217011, pos = { x = -6290.104, y = 236.201, z = -2958.427 }, rot = { x = 0.000, y = 73.524, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066002, name = "GADGET_STATE_CHANGE_66002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66002", action = "action_EVENT_GADGET_STATE_CHANGE_66002" },
	{ config_id = 1066005, name = "GADGET_STATE_CHANGE_66005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66005", action = "action_EVENT_GADGET_STATE_CHANGE_66005" },
	{ config_id = 1066006, name = "GADGET_STATE_CHANGE_66006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66006", action = "action_EVENT_GADGET_STATE_CHANGE_66006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 66007, gadget_id = 70330114, pos = { x = -6236.979, y = 237.896, z = -2936.913 }, rot = { x = 0.000, y = 210.786, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66008, gadget_id = 70330114, pos = { x = -6231.322, y = 239.106, z = -2946.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66009, gadget_id = 70330114, pos = { x = -6241.301, y = 234.051, z = -2943.921 }, rot = { x = 0.000, y = 193.555, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66010, gadget_id = 70330114, pos = { x = -6240.941, y = 236.970, z = -2935.760 }, rot = { x = 0.000, y = 234.963, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66011, gadget_id = 70330114, pos = { x = -6249.125, y = 233.620, z = -2939.809 }, rot = { x = 10.986, y = 253.410, z = 356.751 }, level = 1, area_id = 18 },
		{ config_id = 66012, gadget_id = 70330114, pos = { x = -6253.927, y = 230.508, z = -2942.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66013, gadget_id = 70330114, pos = { x = -6261.710, y = 229.404, z = -2939.390 }, rot = { x = 14.148, y = 290.122, z = 5.118 }, level = 1, area_id = 18 },
		{ config_id = 66014, gadget_id = 70330114, pos = { x = -6269.439, y = 224.401, z = -2935.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66015, gadget_id = 70330114, pos = { x = -6279.406, y = 220.953, z = -2934.857 }, rot = { x = 0.000, y = 235.566, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66016, gadget_id = 70330114, pos = { x = -6304.514, y = 220.341, z = -2940.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66017, gadget_id = 70330114, pos = { x = -6304.869, y = 221.068, z = -2941.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 66018, gadget_id = 70330114, pos = { x = -6290.165, y = 222.013, z = -2942.434 }, rot = { x = 355.916, y = 221.643, z = 4.579 }, level = 1, area_id = 18 },
		{ config_id = 66020, gadget_id = 70330114, pos = { x = -6295.221, y = 225.402, z = -2949.557 }, rot = { x = 319.878, y = 177.525, z = 19.598 }, level = 1, area_id = 18 },
		{ config_id = 66021, gadget_id = 70330114, pos = { x = -6304.134, y = 217.031, z = -2939.150 }, rot = { x = 290.209, y = 180.000, z = 180.000 }, level = 1, area_id = 18 },
		{ config_id = 66022, gadget_id = 70330114, pos = { x = -6306.179, y = 224.510, z = -2941.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
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
		gadgets = { 66001, 66003, 66004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_66002", "GADGET_STATE_CHANGE_66005", "GADGET_STATE_CHANGE_66006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66002(context, evt)
	if 66001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66002(context, evt)
	-- 针对当前group内变量名为 "feather_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "feather_count", 1, 133223001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223511) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	if 66003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	-- 针对当前group内变量名为 "feather_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "feather_count", 1, 133223001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223512) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66006(context, evt)
	if 66004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66006(context, evt)
	-- 针对当前group内变量名为 "feather_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "feather_count", 1, 133223001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223508) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end