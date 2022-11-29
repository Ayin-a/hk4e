-- 基础信息
local base_info = {
	group_id = 144001070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70001, monster_id = 21010701, pos = { x = 678.026, y = 173.479, z = 329.633 }, rot = { x = 0.000, y = 233.449, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 70002, monster_id = 21010301, pos = { x = 671.292, y = 173.129, z = 324.587 }, rot = { x = 0.000, y = 81.730, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 70003, monster_id = 21010201, pos = { x = 675.796, y = 172.820, z = 321.711 }, rot = { x = 0.000, y = 320.284, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 70007, monster_id = 21010901, pos = { x = 674.090, y = 172.017, z = 316.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70004, gadget_id = 70211102, pos = { x = 674.608, y = 173.479, z = 324.962 }, rot = { x = 0.000, y = 288.010, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 70005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 674.711, y = 174.172, z = 325.103 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1070005, name = "ENTER_REGION_70005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70005", action = "action_EVENT_ENTER_REGION_70005" },
	{ config_id = 1070006, name = "ANY_MONSTER_DIE_70006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70006", action = "action_EVENT_ANY_MONSTER_DIE_70006" }
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
		gadgets = { 70004 },
		regions = { 70005 },
		triggers = { "ENTER_REGION_70005", "ANY_MONSTER_DIE_70006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 70001, 70002, 70003, 70007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_70005(context, evt)
	if evt.param1 ~= 70005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70005(context, evt)
	-- 将configid为 70004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001070, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70006(context, evt)
	-- 将configid为 70004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70004, GadgetState.Default) then
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