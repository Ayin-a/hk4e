-- 基础信息
local base_info = {
	group_id = 133004306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306007, monster_id = 20011001, pos = { x = 2495.251, y = 205.086, z = -563.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 1 },
	{ config_id = 306008, monster_id = 20011001, pos = { x = 2493.035, y = 204.924, z = -562.173 }, rot = { x = 0.000, y = 137.773, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 1 },
	{ config_id = 306009, monster_id = 20011001, pos = { x = 2491.117, y = 204.834, z = -564.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 1 },
	{ config_id = 306010, monster_id = 20011001, pos = { x = 2493.289, y = 204.800, z = -566.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 306004, gadget_id = 70211102, pos = { x = 2493.100, y = 205.041, z = -563.900 }, rot = { x = 5.417, y = 359.010, z = 3.468 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 306005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2493.114, y = 204.962, z = -563.101 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1306005, name = "ENTER_REGION_306005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306005", action = "action_EVENT_ENTER_REGION_306005" },
	{ config_id = 1306006, name = "ANY_MONSTER_DIE_306006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306006", action = "action_EVENT_ANY_MONSTER_DIE_306006" }
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
		gadgets = { 306004 },
		regions = { 306005 },
		triggers = { "ENTER_REGION_306005", "ANY_MONSTER_DIE_306006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 306007, 306008, 306009, 306010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_306006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_306005(context, evt)
	if evt.param1 ~= 306005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_306005(context, evt)
	-- 将configid为 306004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004306, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_306006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306006(context, evt)
	-- 将configid为 306004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306004, GadgetState.Default) then
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