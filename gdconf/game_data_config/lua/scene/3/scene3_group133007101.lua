-- 基础信息
local base_info = {
	group_id = 133007101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 20011001, pos = { x = 2144.806, y = 225.990, z = 31.736 }, rot = { x = 0.000, y = 244.963, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 101002, monster_id = 20011001, pos = { x = 2143.639, y = 226.318, z = 28.836 }, rot = { x = 0.000, y = 245.484, z = 0.000 }, level = 23, drop_tag = "史莱姆", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101003, gadget_id = 70211102, pos = { x = 2145.992, y = 226.233, z = 29.331 }, rot = { x = 0.000, y = 256.989, z = 0.000 }, level = 16, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 101004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2146.095, y = 226.151, z = 29.473 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1101004, name = "ENTER_REGION_101004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_101004", action = "action_EVENT_ENTER_REGION_101004" },
	{ config_id = 1101005, name = "ANY_MONSTER_DIE_101005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101005", action = "action_EVENT_ANY_MONSTER_DIE_101005" }
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
		gadgets = { 101003 },
		regions = { 101004 },
		triggers = { "ENTER_REGION_101004", "ANY_MONSTER_DIE_101005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 101001, 101002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_101004(context, evt)
	if evt.param1 ~= 101004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_101004(context, evt)
	-- 将configid为 101003 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007101, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101005(context, evt)
	-- 将configid为 101003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.Default) then
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