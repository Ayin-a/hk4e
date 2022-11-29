-- 基础信息
local base_info = {
	group_id = 133212159
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
	{ config_id = 159001, gadget_id = 70330107, pos = { x = -3489.458, y = 204.397, z = -1961.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159002, gadget_id = 70950103, pos = { x = -3489.213, y = 205.035, z = -1958.772 }, rot = { x = 272.252, y = 223.727, z = 135.321 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159004, gadget_id = 70330107, pos = { x = -3703.016, y = 230.133, z = -2515.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159005, gadget_id = 70950104, pos = { x = -3706.359, y = 230.797, z = -2518.541 }, rot = { x = 272.699, y = 205.798, z = 180.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159007, gadget_id = 70330107, pos = { x = -3943.675, y = 245.138, z = -2198.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159009, gadget_id = 70950105, pos = { x = -3941.998, y = 244.425, z = -2198.819 }, rot = { x = 275.980, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159010, gadget_id = 70330107, pos = { x = -3770.657, y = 227.824, z = -2089.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159012, gadget_id = 70950106, pos = { x = -3759.605, y = 227.973, z = -2088.948 }, rot = { x = 274.115, y = 351.462, z = 155.658 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 159013, gadget_id = 70211131, pos = { x = -3778.806, y = 201.343, z = -1912.123 }, rot = { x = 0.000, y = 186.022, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 159015, gadget_id = 70950107, pos = { x = -3780.477, y = 202.433, z = -1909.876 }, rot = { x = 352.234, y = 231.697, z = 4.264 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 159014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3778.575, y = 200.650, z = -1912.723 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1159003, name = "GADGET_STATE_CHANGE_159003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "159001", condition = "condition_EVENT_GADGET_STATE_CHANGE_159003", action = "action_EVENT_GADGET_STATE_CHANGE_159003", trigger_count = 0 },
	{ config_id = 1159006, name = "GADGET_STATE_CHANGE_159006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "159004", condition = "condition_EVENT_GADGET_STATE_CHANGE_159006", action = "action_EVENT_GADGET_STATE_CHANGE_159006", trigger_count = 0 },
	{ config_id = 1159008, name = "GADGET_STATE_CHANGE_159008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "159007", condition = "condition_EVENT_GADGET_STATE_CHANGE_159008", action = "action_EVENT_GADGET_STATE_CHANGE_159008", trigger_count = 0 },
	{ config_id = 1159011, name = "GADGET_STATE_CHANGE_159011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "159010", condition = "condition_EVENT_GADGET_STATE_CHANGE_159011", action = "action_EVENT_GADGET_STATE_CHANGE_159011", trigger_count = 0 },
	{ config_id = 1159014, name = "ENTER_REGION_159014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_159014", action = "action_EVENT_ENTER_REGION_159014", trigger_count = 0 },
	{ config_id = 1159016, name = "GADGETTALK_DONE_159016", event = EventType.EVENT_GADGETTALK_DONE, source = "6800501", condition = "", action = "action_EVENT_GADGETTALK_DONE_159016" },
	{ config_id = 1159017, name = "GADGETTALK_DONE_159017", event = EventType.EVENT_GADGETTALK_DONE, source = "6800502", condition = "", action = "action_EVENT_GADGETTALK_DONE_159017" },
	{ config_id = 1159018, name = "GADGETTALK_DONE_159018", event = EventType.EVENT_GADGETTALK_DONE, source = "6800503", condition = "", action = "action_EVENT_GADGETTALK_DONE_159018" },
	{ config_id = 1159019, name = "GADGETTALK_DONE_159019", event = EventType.EVENT_GADGETTALK_DONE, source = "6800504", condition = "", action = "action_EVENT_GADGETTALK_DONE_159019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "133212159_var", value = 0, no_refresh = true }
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
		gadgets = { 159001, 159002, 159005, 159009, 159012 },
		regions = { 159014 },
		triggers = { "ENTER_REGION_159014", "GADGETTALK_DONE_159016", "GADGETTALK_DONE_159017", "GADGETTALK_DONE_159018", "GADGETTALK_DONE_159019" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 159013, 159015 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159003(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133212159, 159001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159003(context, evt)
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133212159, 159004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212159, 4)
	
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133212159, 159007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159008(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212159, 6)
	
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133212159, 159010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159011(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212159, 8)
	
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_159014(context, evt)
	if evt.param1 ~= 159014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"133212159_var"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "133212159_var", 133212159) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_159014(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212159, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_159016(context, evt)
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_159017(context, evt)
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_159018(context, evt)
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_159019(context, evt)
	-- 针对当前group内变量名为 "133212159_var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "133212159_var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end