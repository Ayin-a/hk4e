-- 基础信息
local base_info = {
	group_id = 155006063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 22010101, pos = { x = 392.196, y = 187.372, z = -270.470 }, rot = { x = 0.000, y = 164.084, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 },
	{ config_id = 63002, monster_id = 22010401, pos = { x = 398.497, y = 187.608, z = -271.145 }, rot = { x = 0.000, y = 313.038, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 },
	{ config_id = 63003, monster_id = 22010201, pos = { x = 391.236, y = 188.237, z = -275.621 }, rot = { x = 0.000, y = 355.141, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 山顶三合一仙灵宝箱
	{ config_id = 63004, gadget_id = 70211112, pos = { x = 398.977, y = 189.124, z = -279.709 }, rot = { x = 5.277, y = 328.032, z = 357.519 }, level = 16, drop_tag = "解谜中级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 63005, shape = RegionShape.SPHERE, radius = 4, pos = { x = 399.145, y = 189.262, z = -279.829 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1063005, name = "ENTER_REGION_63005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63005", action = "action_EVENT_ENTER_REGION_63005" },
	{ config_id = 1063006, name = "ANY_MONSTER_DIE_63006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63006", action = "action_EVENT_ANY_MONSTER_DIE_63006" },
	{ config_id = 1063007, name = "GADGET_STATE_CHANGE_63007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63007", action = "action_EVENT_GADGET_STATE_CHANGE_63007", trigger_count = 0 },
	{ config_id = 1063008, name = "GROUP_LOAD_63008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_63008", action = "action_EVENT_GROUP_LOAD_63008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestopened", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 63004 },
		regions = { 63005 },
		triggers = { "ENTER_REGION_63005", "ANY_MONSTER_DIE_63006", "GADGET_STATE_CHANGE_63007", "GROUP_LOAD_63008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 63001, 63002, 63003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_63006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_63005(context, evt)
	if evt.param1 ~= 63005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63005(context, evt)
	-- 将configid为 63004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006063, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63006(context, evt)
	-- 将configid为 63004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_63007(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155006063, 63004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_63007(context, evt)
	-- 将本组内变量名为 "chestopened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestopened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155006177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_63008(context, evt)
	-- 判断变量"chestopened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestopened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_63008(context, evt)
		if ScriptLib.GetGroupVariableValueByGroup(context,  "gameplayState", 155006177) == 0 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155006177)
		end
		return 0
	
end