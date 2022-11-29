-- 基础信息
local base_info = {
	group_id = 133310082
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 82002,
	gadget_fireBase1 = 82001,
	gadget_fire1 = 82003,
	gadget_fireBase2 = 82004,
	gadget_fire2 = 82005,
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
	{ config_id = 82006, monster_id = 24040201, pos = { x = -2381.306, y = 94.972, z = 5079.053 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1号基座
	{ config_id = 82001, gadget_id = 70330279, pos = { x = -2370.951, y = 94.959, z = 5078.982 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 82002, gadget_id = 70330278, pos = { x = -2360.000, y = 118.849, z = 5091.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 82003, gadget_id = 70330257, pos = { x = -2370.951, y = 96.749, z = 5078.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000021, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 82004, gadget_id = 70330279, pos = { x = -2417.775, y = 112.958, z = 5100.688 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 82005, gadget_id = 70330257, pos = { x = -2417.775, y = 114.725, z = 5100.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000022, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1082007, name = "GADGET_STATE_CHANGE_82007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_82007", action = "action_EVENT_GADGET_STATE_CHANGE_82007" },
	{ config_id = 1082008, name = "ANY_MONSTER_DIE_82008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82008", action = "action_EVENT_ANY_MONSTER_DIE_82008" },
	-- 玩法开始埋点
	{ config_id = 1082009, name = "GADGET_STATE_CHANGE_82009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_82009", action = "action_EVENT_GADGET_STATE_CHANGE_82009" },
	-- 玩法进度埋点
	{ config_id = 1082010, name = "GADGET_STATE_CHANGE_82010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_82010", action = "action_EVENT_GADGET_STATE_CHANGE_82010" }
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
		monsters = { 82006 },
		gadgets = { 82001, 82002, 82004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_82007", "ANY_MONSTER_DIE_82008", "GADGET_STATE_CHANGE_82009", "GADGET_STATE_CHANGE_82010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_82007(context, evt)
	if 82002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_82007(context, evt)
	-- 针对当前group内变量名为 "torch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "torch", 1, 133310009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "reminder1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "reminder1", 1, 133310287) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
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
function condition_EVENT_ANY_MONSTER_DIE_82008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82008(context, evt)
	-- 将configid为 82001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_82009(context, evt)
	if 82001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_82009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_82010(context, evt)
	if 82004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_82010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"