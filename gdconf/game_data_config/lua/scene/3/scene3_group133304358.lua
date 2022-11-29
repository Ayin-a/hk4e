-- 基础信息
local base_info = {
	group_id = 133304358
}

-- Trigger变量
local defs = {
	gadget_id = 358004
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
	{ config_id = 358001, gadget_id = 70310200, pos = { x = -1687.785, y = 100.881, z = 2263.510 }, rot = { x = 281.464, y = 160.884, z = 1.146 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 358002, gadget_id = 70310200, pos = { x = -1629.677, y = 122.018, z = 2305.951 }, rot = { x = 0.000, y = 326.162, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 358003, gadget_id = 70310200, pos = { x = -1611.605, y = 137.808, z = 2290.623 }, rot = { x = 0.000, y = 330.542, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 358004, gadget_id = 70211151, pos = { x = -1669.390, y = 120.834, z = 2286.382 }, rot = { x = 9.661, y = 262.817, z = 347.707 }, level = 26, chest_drop_id = 21910046, drop_count = 1, state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 358005, gadget_id = 70330255, pos = { x = -1668.417, y = 120.797, z = 2279.885 }, rot = { x = 28.589, y = 225.289, z = 1.134 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 358006, gadget_id = 70330255, pos = { x = -1668.417, y = 120.797, z = 2279.885 }, rot = { x = 0.000, y = 52.619, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 358007, gadget_id = 70330255, pos = { x = -1668.417, y = 120.797, z = 2279.885 }, rot = { x = 352.604, y = 77.789, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 358014, gadget_id = 70310200, pos = { x = -1668.417, y = 120.797, z = 2279.885 }, rot = { x = 0.000, y = 164.908, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 成功
	{ config_id = 1358008, name = "GADGET_STATE_CHANGE_358008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358008", action = "action_EVENT_GADGET_STATE_CHANGE_358008", trigger_count = 0 },
	{ config_id = 1358010, name = "GADGET_STATE_CHANGE_358010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358010", action = "action_EVENT_GADGET_STATE_CHANGE_358010", trigger_count = 0 },
	{ config_id = 1358021, name = "GROUP_LOAD_358021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_358021", action = "action_EVENT_GROUP_LOAD_358021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 358015, gadget_id = 70230108, pos = { x = -1671.145, y = 118.625, z = 2288.681 }, rot = { x = 323.762, y = 92.072, z = 165.131 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 358016, gadget_id = 70230112, pos = { x = -1671.890, y = 119.145, z = 2283.874 }, rot = { x = 346.694, y = 336.802, z = 130.933 }, level = 30, area_id = 21 },
		{ config_id = 358017, gadget_id = 70230112, pos = { x = -1668.596, y = 119.852, z = 2282.442 }, rot = { x = 4.258, y = 8.447, z = 71.568 }, level = 30, area_id = 21 },
		{ config_id = 358018, gadget_id = 70230112, pos = { x = -1666.598, y = 119.218, z = 2289.486 }, rot = { x = 0.000, y = 0.000, z = 52.941 }, level = 30, area_id = 21 },
		{ config_id = 358019, gadget_id = 70230112, pos = { x = -1665.067, y = 119.923, z = 2286.120 }, rot = { x = 0.000, y = 0.000, z = 56.235 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1358009, name = "GADGET_STATE_CHANGE_358009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_358009" },
		{ config_id = 1358011, name = "GADGET_STATE_CHANGE_358011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358011", action = "action_EVENT_GADGET_STATE_CHANGE_358011", trigger_count = 0 },
		{ config_id = 1358012, name = "GADGET_STATE_CHANGE_358012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358012", action = "action_EVENT_GADGET_STATE_CHANGE_358012", trigger_count = 0 },
		{ config_id = 1358013, name = "GADGET_STATE_CHANGE_358013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358013", action = "action_EVENT_GADGET_STATE_CHANGE_358013", trigger_count = 0 },
		{ config_id = 1358020, name = "GADGET_STATE_CHANGE_358020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358020", action = "action_EVENT_GADGET_STATE_CHANGE_358020", trigger_count = 0 }
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
		gadgets = { 358001, 358002, 358003, 358004, 358014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_358008", "GADGET_STATE_CHANGE_358010", "GROUP_LOAD_358021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 358005, 358006, 358007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_358008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304358, 358001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304358, 358002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304358, 358003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304358, 358014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_358008(context, evt)
	-- 将configid为 358004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_358010(context, evt)
	if 358004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_358010(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304358, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_358021(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_358021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304358, 2)
	
	return 0
end