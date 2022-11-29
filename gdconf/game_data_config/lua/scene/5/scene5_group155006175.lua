-- 基础信息
local base_info = {
	group_id = 155006175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 20060401, pos = { x = 456.625, y = 176.830, z = -185.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 175002, monster_id = 20060101, pos = { x = 465.163, y = 177.153, z = -192.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 175003, monster_id = 20060301, pos = { x = 456.157, y = 175.843, z = -198.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 山顶三合一仙灵宝箱
	{ config_id = 175004, gadget_id = 70211012, pos = { x = 454.164, y = 175.800, z = -192.329 }, rot = { x = 8.808, y = 124.370, z = 352.044 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 175005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 453.290, y = 176.164, z = -191.348 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1175005, name = "ENTER_REGION_175005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_175005", action = "action_EVENT_ENTER_REGION_175005" },
	{ config_id = 1175006, name = "ANY_MONSTER_DIE_175006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175006", action = "action_EVENT_ANY_MONSTER_DIE_175006" },
	{ config_id = 1175007, name = "GADGET_STATE_CHANGE_175007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_175007", action = "action_EVENT_GADGET_STATE_CHANGE_175007" },
	{ config_id = 1175008, name = "GROUP_LOAD_175008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175008", action = "action_EVENT_GROUP_LOAD_175008", trigger_count = 0 }
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
		gadgets = { 175004 },
		regions = { 175005 },
		triggers = { "ENTER_REGION_175005", "ANY_MONSTER_DIE_175006", "GADGET_STATE_CHANGE_175007", "GROUP_LOAD_175008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 175001, 175002, 175003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_175005(context, evt)
	if evt.param1 ~= 175005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_175005(context, evt)
	-- 将configid为 175004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006175, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175006(context, evt)
	-- 将configid为 175004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175004, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_175007(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155006175, 175004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_175007(context, evt)
	-- 将本组内变量名为 "chestopened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestopened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155006179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_175008(context, evt)
	-- 判断变量"chestopened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestopened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175008(context, evt)
		if ScriptLib.GetGroupVariableValueByGroup(context,  "gameplayState", 155006179) == 0 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155006179)
		end
		return 0
end