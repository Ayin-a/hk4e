-- 基础信息
local base_info = {
	group_id = 133309148
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 148002,
	gadget_fireBase1 = 148001,
	gadget_fire1 = 148003,
	gadget_fireBase2 = 148004,
	gadget_fire2 = 148005,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
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
	{ config_id = 148001, gadget_id = 70330279, pos = { x = -2793.268, y = 191.412, z = 5924.330 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 148002, gadget_id = 70330278, pos = { x = -2795.768, y = 179.412, z = 5955.218 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 148003, gadget_id = 70330257, pos = { x = -2793.268, y = 193.212, z = 5924.330 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900218, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 148004, gadget_id = 70330279, pos = { x = -2806.771, y = 179.412, z = 5940.219 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 148005, gadget_id = 70330257, pos = { x = -2806.772, y = 181.212, z = 5940.218 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900219, persistent = true, area_id = 27 },
	{ config_id = 148006, gadget_id = 70220103, pos = { x = -2816.426, y = 187.931, z = 5895.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 148009, gadget_id = 70330432, pos = { x = -2813.174, y = 179.412, z = 5913.753 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 148010, gadget_id = 70330432, pos = { x = -2820.174, y = 179.412, z = 5926.253 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 148013, gadget_id = 70220103, pos = { x = -2796.755, y = 193.923, z = 5923.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 148014, gadget_id = 70220103, pos = { x = -2825.928, y = 205.910, z = 5925.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 148015, gadget_id = 70220103, pos = { x = -2796.005, y = 187.988, z = 5896.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1148007, name = "GADGET_STATE_CHANGE_148007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148007", action = "action_EVENT_GADGET_STATE_CHANGE_148007" },
	-- 保底
	{ config_id = 1148008, name = "GROUP_LOAD_148008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_148008", action = "action_EVENT_GROUP_LOAD_148008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1148011, name = "GADGET_STATE_CHANGE_148011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148011", action = "action_EVENT_GADGET_STATE_CHANGE_148011" },
	-- 玩法进度埋点
	{ config_id = 1148012, name = "GADGET_STATE_CHANGE_148012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148012", action = "action_EVENT_GADGET_STATE_CHANGE_148012" }
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
		gadgets = { 148001, 148002, 148004, 148009, 148010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148007", "GROUP_LOAD_148008", "GADGET_STATE_CHANGE_148011", "GADGET_STATE_CHANGE_148012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 为玩家的折返动线补充快速移动手段,
		monsters = { },
		gadgets = { 148006, 148013, 148014, 148015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_148007(context, evt)
	if 148002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148007(context, evt)
	-- 将本组内变量名为 "open2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open2", 1, 133309623) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309148, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_148008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309148, 148002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_148008(context, evt)
	-- 将本组内变量名为 "open2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open2", 1, 133309623) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309148, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148011(context, evt)
	if 148001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148012(context, evt)
	if 148004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"