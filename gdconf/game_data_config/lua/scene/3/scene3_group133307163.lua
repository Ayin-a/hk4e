-- 基础信息
local base_info = {
	group_id = 133307163
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 163002,
	gadget_fireBase1 = 163001,
	gadget_fire1 = 163003,
	gadget_fireBase2 = 163004,
	gadget_fire2 = 163005,
	gadget_fireBase3 = 163011,
	gadget_fire3 = 163012,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	-- 1号基座
	{ config_id = 163001, gadget_id = 70330279, pos = { x = -1409.532, y = 10.182, z = 5760.251 }, rot = { x = 0.000, y = 329.177, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 163002, gadget_id = 70330278, pos = { x = -1241.664, y = 24.173, z = 5745.582 }, rot = { x = 0.000, y = 15.317, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 163003, gadget_id = 70330257, pos = { x = -1409.518, y = 11.899, z = 5760.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700033, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 163004, gadget_id = 70330279, pos = { x = -1346.478, y = 6.002, z = 5758.501 }, rot = { x = 0.000, y = 15.312, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 163005, gadget_id = 70330257, pos = { x = -1346.581, y = 7.644, z = 5758.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700034, persistent = true, area_id = 32 },
	{ config_id = 163006, gadget_id = 70211101, pos = { x = -1240.604, y = 24.212, z = 5749.869 }, rot = { x = 0.000, y = 13.945, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 3号基座
	{ config_id = 163011, gadget_id = 70330279, pos = { x = -1301.911, y = 15.148, z = 5780.261 }, rot = { x = 0.000, y = 15.918, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 163012, gadget_id = 70330257, pos = { x = -1301.726, y = 16.738, z = 5780.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700041, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1163007, name = "GADGET_STATE_CHANGE_163007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163007", action = "action_EVENT_GADGET_STATE_CHANGE_163007" },
	-- 保底
	{ config_id = 1163008, name = "GROUP_LOAD_163008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163008", action = "action_EVENT_GROUP_LOAD_163008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1163009, name = "GADGET_STATE_CHANGE_163009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163009", action = "action_EVENT_GADGET_STATE_CHANGE_163009" },
	-- 玩法进度埋点
	{ config_id = 1163010, name = "GADGET_STATE_CHANGE_163010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163010", action = "action_EVENT_GADGET_STATE_CHANGE_163010" }
}

-- 变量
variables = {
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
		gadgets = { 163001, 163002, 163004, 163011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_163007", "GROUP_LOAD_163008", "GADGET_STATE_CHANGE_163009", "GADGET_STATE_CHANGE_163010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163007(context, evt)
	if 163002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163007(context, evt)
	-- 创建id为163006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "unlock_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_1", 1, 133307165) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_163008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307163, 163002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_163008(context, evt)
	-- 创建id为163006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "unlock_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_1", 1, 133307165) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163009(context, evt)
	if 163001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163010(context, evt)
	if 163004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"