-- 基础信息
local base_info = {
	group_id = 133007188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 26060101, pos = { x = 2558.240, y = 214.577, z = 150.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "雷萤", area_id = 4 },
	{ config_id = 188002, monster_id = 26060101, pos = { x = 2555.345, y = 214.607, z = 150.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "雷萤", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188003, gadget_id = 70211102, pos = { x = 2556.799, y = 214.703, z = 152.901 }, rot = { x = 0.000, y = 206.996, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 188004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2555.671, y = 214.698, z = 152.399 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1188004, name = "ENTER_REGION_188004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188004", action = "action_EVENT_ENTER_REGION_188004" },
	{ config_id = 1188005, name = "ANY_MONSTER_DIE_188005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188005", action = "action_EVENT_ANY_MONSTER_DIE_188005" }
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
		gadgets = { 188003 },
		regions = { 188004 },
		triggers = { "ENTER_REGION_188004", "ANY_MONSTER_DIE_188005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 188001, 188002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_188004(context, evt)
	if evt.param1 ~= 188004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188004(context, evt)
	-- 将configid为 188003 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188003, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007188, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188005(context, evt)
	-- 将configid为 188003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188003, GadgetState.Default) then
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