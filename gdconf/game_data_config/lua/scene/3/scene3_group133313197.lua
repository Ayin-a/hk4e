-- 基础信息
local base_info = {
	group_id = 133313197
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 197002,
	gadget_fireBase1 = 197001,
	gadget_fire1 = 197003,
	gadget_fireBase2 = 197004,
	gadget_fire2 = 197005,
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
	{ config_id = 197011, monster_id = 24040101, pos = { x = -827.324, y = -268.609, z = 5676.727 }, rot = { x = 0.000, y = 325.264, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 },
	{ config_id = 197012, monster_id = 24040201, pos = { x = -835.171, y = -268.576, z = 5674.994 }, rot = { x = 0.000, y = 33.381, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1号基座
	{ config_id = 197001, gadget_id = 70330279, pos = { x = -832.421, y = -268.628, z = 5681.104 }, rot = { x = 0.000, y = 353.141, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 197002, gadget_id = 70330278, pos = { x = -821.857, y = -263.828, z = 5771.016 }, rot = { x = 0.000, y = 354.429, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 197003, gadget_id = 70330257, pos = { x = -832.575, y = -266.885, z = 5680.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300066, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 197004, gadget_id = 70330279, pos = { x = -856.486, y = -263.849, z = 5734.030 }, rot = { x = 1.987, y = 264.860, z = 359.689 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 197005, gadget_id = 70330257, pos = { x = -856.461, y = -262.203, z = 5734.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300067, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 197006, shape = RegionShape.SPHERE, radius = 8, pos = { x = -832.449, y = -268.628, z = 5680.671 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1197006, name = "ENTER_REGION_197006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_197006", action = "action_EVENT_ENTER_REGION_197006" },
	-- 玩法完成
	{ config_id = 1197007, name = "GADGET_STATE_CHANGE_197007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197007", action = "action_EVENT_GADGET_STATE_CHANGE_197007" },
	-- 保底
	{ config_id = 1197008, name = "GROUP_LOAD_197008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_197008", action = "action_EVENT_GROUP_LOAD_197008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1197009, name = "GADGET_STATE_CHANGE_197009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197009", action = "action_EVENT_GADGET_STATE_CHANGE_197009" },
	-- 玩法进度埋点
	{ config_id = 1197010, name = "GADGET_STATE_CHANGE_197010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197010", action = "action_EVENT_GADGET_STATE_CHANGE_197010" },
	{ config_id = 1197013, name = "ANY_MONSTER_DIE_197013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_197013", action = "action_EVENT_ANY_MONSTER_DIE_197013" }
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
		gadgets = { 197001, 197002, 197004 },
		regions = { 197006 },
		triggers = { "ENTER_REGION_197006", "GADGET_STATE_CHANGE_197007", "GROUP_LOAD_197008", "GADGET_STATE_CHANGE_197009", "GADGET_STATE_CHANGE_197010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 197011, 197012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_197013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_197006(context, evt)
	if evt.param1 ~= 197006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_197006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313197, 2)
	
	-- 将configid为 197001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_197007(context, evt)
	if 197002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_197007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "unlock_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_1", 1, 133313196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_197008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313197, 197002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_197008(context, evt)
	-- 将本组内变量名为 "unlock_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_1", 1, 133313196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_197009(context, evt)
	if 197001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_197009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_197010(context, evt)
	if 197004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_197010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_197013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_197013(context, evt)
	-- 将configid为 197001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"