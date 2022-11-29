-- 基础信息
local base_info = {
	group_id = 133003527
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 527007, monster_id = 21010501, pos = { x = 2518.267, y = 311.457, z = -1631.961 }, rot = { x = 0.000, y = 78.862, z = 0.000 }, level = 11, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 527008, monster_id = 21010501, pos = { x = 2523.261, y = 311.874, z = -1626.618 }, rot = { x = 0.000, y = 75.050, z = 0.000 }, level = 11, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 527009, monster_id = 21010701, pos = { x = 2522.841, y = 312.319, z = -1630.661 }, rot = { x = 0.000, y = 98.421, z = 0.000 }, level = 11, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 527004, gadget_id = 70211112, pos = { x = 2551.254, y = 322.941, z = -1658.493 }, rot = { x = 0.000, y = 301.928, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 527005, shape = RegionShape.SPHERE, radius = 8.8, pos = { x = 2546.526, y = 321.181, z = -1655.384 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1527005, name = "ENTER_REGION_527005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_527005", action = "action_EVENT_ENTER_REGION_527005" },
	{ config_id = 1527006, name = "ANY_MONSTER_DIE_527006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_527006", action = "action_EVENT_ANY_MONSTER_DIE_527006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 527004 },
		regions = { 527005 },
		triggers = { "ENTER_REGION_527005", "ANY_MONSTER_DIE_527006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 527007, 527008, 527009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_527006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_527005(context, evt)
	if evt.param1 ~= 527005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_527005(context, evt)
	-- 将configid为 527004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 527004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003527, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_527006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_527006(context, evt)
	-- 将configid为 527004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 527004, GadgetState.Default) then
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