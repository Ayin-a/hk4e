-- 基础信息
local base_info = {
	group_id = 166001375
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 25010301, pos = { x = 1009.521, y = 792.679, z = 390.173 }, rot = { x = 0.000, y = 222.163, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 375002, monster_id = 25010501, pos = { x = 1014.846, y = 792.666, z = 383.935 }, rot = { x = 0.000, y = 222.163, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 375003, monster_id = 25070101, pos = { x = 1008.617, y = 792.723, z = 384.051 }, rot = { x = 0.000, y = 222.163, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 375004, gadget_id = 70211102, pos = { x = 1009.811, y = 792.691, z = 385.012 }, rot = { x = 0.000, y = 230.869, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 375005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1009.463, y = 792.692, z = 384.506 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1375005, name = "ENTER_REGION_375005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_375005", action = "action_EVENT_ENTER_REGION_375005" },
	{ config_id = 1375006, name = "ANY_MONSTER_DIE_375006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_375006", action = "action_EVENT_ANY_MONSTER_DIE_375006" }
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
		gadgets = { 375004 },
		regions = { 375005 },
		triggers = { "ENTER_REGION_375005", "ANY_MONSTER_DIE_375006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 375001, 375002, 375003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_375006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_375005(context, evt)
	if evt.param1 ~= 375005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_375005(context, evt)
	-- 将configid为 375004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001375, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_375006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_375006(context, evt)
	-- 将configid为 375004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375004, GadgetState.Default) then
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