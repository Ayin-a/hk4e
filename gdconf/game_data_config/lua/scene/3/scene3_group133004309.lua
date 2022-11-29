-- 基础信息
local base_info = {
	group_id = 133004309
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 309007, monster_id = 20011501, pos = { x = 2493.705, y = 253.709, z = -334.589 }, rot = { x = 0.000, y = 101.188, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 4 },
	{ config_id = 309008, monster_id = 20011401, pos = { x = 2492.532, y = 254.010, z = -332.626 }, rot = { x = 0.000, y = 98.511, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 4 },
	{ config_id = 309009, monster_id = 20011401, pos = { x = 2491.514, y = 254.051, z = -336.027 }, rot = { x = 0.000, y = 80.865, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 309004, gadget_id = 70211112, pos = { x = 2492.100, y = 253.995, z = -334.200 }, rot = { x = 9.548, y = 108.146, z = 2.185 }, level = 16, drop_tag = "解谜中级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 309005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2492.731, y = 253.885, z = -334.464 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1309005, name = "ENTER_REGION_309005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_309005", action = "action_EVENT_ENTER_REGION_309005" },
	{ config_id = 1309006, name = "ANY_MONSTER_DIE_309006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_309006", action = "action_EVENT_ANY_MONSTER_DIE_309006" }
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
		gadgets = { 309004 },
		regions = { 309005 },
		triggers = { "ENTER_REGION_309005", "ANY_MONSTER_DIE_309006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 309007, 309008, 309009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_309006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_309005(context, evt)
	if evt.param1 ~= 309005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_309005(context, evt)
	-- 将configid为 309004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004309, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_309006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_309006(context, evt)
	-- 将configid为 309004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309004, GadgetState.Default) then
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