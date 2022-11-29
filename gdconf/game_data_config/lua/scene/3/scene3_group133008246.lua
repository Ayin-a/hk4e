-- 基础信息
local base_info = {
	group_id = 133008246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 26010101, pos = { x = 1423.283, y = 337.049, z = -909.594 }, rot = { x = 0.000, y = 195.169, z = 8.955 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 246002, monster_id = 26010101, pos = { x = 1427.828, y = 336.068, z = -910.511 }, rot = { x = 0.000, y = 195.169, z = 8.955 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246004, gadget_id = 70211112, pos = { x = 1425.928, y = 336.835, z = -908.698 }, rot = { x = 0.000, y = 195.169, z = 8.955 }, level = 26, drop_tag = "雪山解谜中级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 246005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1425.976, y = 337.055, z = -908.543 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1246005, name = "ENTER_REGION_246005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_246005", action = "action_EVENT_ENTER_REGION_246005" },
	{ config_id = 1246006, name = "ANY_MONSTER_DIE_246006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246006", action = "action_EVENT_ANY_MONSTER_DIE_246006" }
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
		gadgets = { 246004 },
		regions = { 246005 },
		triggers = { "ENTER_REGION_246005", "ANY_MONSTER_DIE_246006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 246001, 246002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_246005(context, evt)
	if evt.param1 ~= 246005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_246005(context, evt)
	-- 将configid为 246004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008246, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246006(context, evt)
	-- 将configid为 246004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246004, GadgetState.Default) then
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