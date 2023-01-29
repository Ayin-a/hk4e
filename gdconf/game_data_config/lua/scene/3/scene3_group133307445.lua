-- 基础信息
local base_info = {
	group_id = 133307445
}

-- Trigger变量
local defs = {
	gadget_1 = 445001,
	gadget_2 = 445002,
	gadget_3 = 445003
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {defs.gadget_1,defs.gadget_2,defs.gadget_3}

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
	{ config_id = 445001, gadget_id = 70330227, pos = { x = -1487.723, y = 59.831, z = 5196.569 }, rot = { x = 0.000, y = 18.824, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 445002, gadget_id = 70330310, pos = { x = -1515.235, y = 59.583, z = 5250.529 }, rot = { x = 359.930, y = 335.053, z = 0.274 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 32 },
	{ config_id = 445003, gadget_id = 70330310, pos = { x = -1505.447, y = 59.434, z = 5220.910 }, rot = { x = 0.000, y = 17.908, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 32 },
	{ config_id = 445004, gadget_id = 70211111, pos = { x = -1492.771, y = 59.557, z = 5216.808 }, rot = { x = 0.000, y = 108.116, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 445005, gadget_id = 70330225, pos = { x = -1498.973, y = 69.213, z = 5211.635 }, rot = { x = 0.000, y = 14.596, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 445006, gadget_id = 70330225, pos = { x = -1490.770, y = 59.927, z = 5232.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 445007, gadget_id = 70220103, pos = { x = 709.998, y = 95.933, z = -415.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 9 }
}

-- 区域
regions = {
	-- 教学
	{ config_id = 445012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1487.279, y = 60.851, z = 5197.045 }, area_id = 32 },
	-- 建筑教学
	{ config_id = 445013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1504.872, y = 61.537, z = 5222.183 }, area_id = 32 },
	-- 建筑教学
	{ config_id = 445014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1514.125, y = 61.550, z = 5249.641 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1445008, name = "VARIABLE_CHANGE_445008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_445008", action = "action_EVENT_VARIABLE_CHANGE_445008" },
	-- 挑战失败
	{ config_id = 1445009, name = "VARIABLE_CHANGE_445009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_445009", action = "action_EVENT_VARIABLE_CHANGE_445009", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1445010, name = "VARIABLE_CHANGE_445010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_445010", action = "action_EVENT_VARIABLE_CHANGE_445010", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1445011, name = "GROUP_LOAD_445011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_445011", action = "action_EVENT_GROUP_LOAD_445011", trigger_count = 0 },
	-- 教学
	{ config_id = 1445012, name = "ENTER_REGION_445012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_445012", action = "action_EVENT_ENTER_REGION_445012" },
	-- 建筑教学
	{ config_id = 1445013, name = "ENTER_REGION_445013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_445013", action = "action_EVENT_ENTER_REGION_445013" },
	-- 建筑教学
	{ config_id = 1445014, name = "ENTER_REGION_445014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_445014", action = "action_EVENT_ENTER_REGION_445014" }
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
	end_suite = 3,
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
		gadgets = { 445001, 445002, 445003, 445005, 445006 },
		regions = { 445012, 445013, 445014 },
		triggers = { "VARIABLE_CHANGE_445008", "VARIABLE_CHANGE_445009", "VARIABLE_CHANGE_445010", "GROUP_LOAD_445011", "ENTER_REGION_445012", "ENTER_REGION_445013", "ENTER_REGION_445014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 445007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 445001, 445002, 445003, 445007 },
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
function condition_EVENT_VARIABLE_CHANGE_445008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_445008(context, evt)
	-- 创建id为445004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 445004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_445009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 0 then
			return false
	end
	
	-- 判断变量"HourGlass_InChallenge"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_445009(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307445, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_445010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_445010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307445, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_445011(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_445011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307445, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_445012(context, evt)
	if evt.param1 ~= 445012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_445012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_445013(context, evt)
	if evt.param1 ~= 445013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307445, 445002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_445013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_445014(context, evt)
	if evt.param1 ~= 445014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307445, 445003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_445014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
require "V3_1/Engineer_Mark"