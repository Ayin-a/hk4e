-- 基础信息
local base_info = {
	group_id = 133220585
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 585001, monster_id = 21010401, pos = { x = -2451.735, y = 337.790, z = -4315.302 }, rot = { x = 359.787, y = 277.810, z = 0.194 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 585002, monster_id = 21010401, pos = { x = -2453.869, y = 336.232, z = -4321.678 }, rot = { x = 0.000, y = 332.784, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 585003, monster_id = 21010401, pos = { x = -2455.418, y = 337.168, z = -4310.219 }, rot = { x = 0.000, y = 214.324, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 585007, monster_id = 21010401, pos = { x = -2460.686, y = 333.979, z = -4319.676 }, rot = { x = 0.000, y = 15.651, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 585008, monster_id = 21010401, pos = { x = -2453.067, y = 337.127, z = -4317.822 }, rot = { x = 0.000, y = 300.112, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 585004, gadget_id = 70211102, pos = { x = -2456.793, y = 336.605, z = -4313.751 }, rot = { x = 8.265, y = 274.092, z = 11.416 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 585005, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2456.865, y = 336.529, z = -4314.034 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1585005, name = "ENTER_REGION_585005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_585005", action = "action_EVENT_ENTER_REGION_585005" },
	{ config_id = 1585006, name = "ANY_MONSTER_DIE_585006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_585006", action = "action_EVENT_ANY_MONSTER_DIE_585006" }
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
		gadgets = { 585004 },
		regions = { 585005 },
		triggers = { "ENTER_REGION_585005", "ANY_MONSTER_DIE_585006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 585001, 585002, 585003, 585007, 585008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_585006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_585005(context, evt)
	if evt.param1 ~= 585005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_585005(context, evt)
	-- 将configid为 585004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220585, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_585006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_585006(context, evt)
	-- 将configid为 585004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585004, GadgetState.Default) then
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