-- 基础信息
local base_info = {
	group_id = 133101121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 20010301, pos = { x = 1617.791, y = 233.405, z = 1380.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 5 },
	{ config_id = 121002, monster_id = 20010301, pos = { x = 1619.291, y = 232.299, z = 1378.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 5 },
	{ config_id = 121003, monster_id = 20010301, pos = { x = 1616.191, y = 233.106, z = 1376.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121004, gadget_id = 70211102, pos = { x = 1617.811, y = 232.635, z = 1377.982 }, rot = { x = 355.304, y = 199.049, z = 11.803 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 121005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1617.915, y = 233.206, z = 1378.124 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1121005, name = "ENTER_REGION_121005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121005", action = "action_EVENT_ENTER_REGION_121005" },
	{ config_id = 1121006, name = "ANY_MONSTER_DIE_121006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121006", action = "action_EVENT_ANY_MONSTER_DIE_121006" }
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
		gadgets = { 121004 },
		regions = { 121005 },
		triggers = { "ENTER_REGION_121005", "ANY_MONSTER_DIE_121006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 121001, 121002, 121003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_121006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_121005(context, evt)
	if evt.param1 ~= 121005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121005(context, evt)
	-- 将configid为 121004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101121, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121006(context, evt)
	-- 将configid为 121004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121004, GadgetState.Default) then
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