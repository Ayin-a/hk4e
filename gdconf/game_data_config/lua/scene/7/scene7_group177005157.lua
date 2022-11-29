-- 基础信息
local base_info = {
	group_id = 177005157
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 157001, monster_id = 22010101, pos = { x = 501.534, y = 150.526, z = 914.665 }, rot = { x = 0.000, y = 173.622, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 210 },
	{ config_id = 157002, monster_id = 22010101, pos = { x = 505.103, y = 151.461, z = 910.812 }, rot = { x = 0.000, y = 249.652, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 157004, gadget_id = 70211156, pos = { x = 502.764, y = 150.941, z = 911.313 }, rot = { x = 353.970, y = 41.962, z = 11.527 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 157005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 502.868, y = 150.974, z = 911.455 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1157005, name = "ENTER_REGION_157005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157005", action = "action_EVENT_ENTER_REGION_157005" },
	{ config_id = 1157006, name = "ANY_MONSTER_DIE_157006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_157006", action = "action_EVENT_ANY_MONSTER_DIE_157006" }
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
		gadgets = { 157004 },
		regions = { 157005 },
		triggers = { "ENTER_REGION_157005", "ANY_MONSTER_DIE_157006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 157001, 157002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_157006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_157005(context, evt)
	if evt.param1 ~= 157005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157005(context, evt)
	-- 将configid为 157004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005157, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_157006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_157006(context, evt)
	-- 将configid为 157004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157004, GadgetState.Default) then
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