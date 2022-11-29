-- 基础信息
local base_info = {
	group_id = 133008332
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 26010101, pos = { x = 658.763, y = 203.200, z = -929.659 }, rot = { x = 1.379, y = 1.876, z = 12.386 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 332002, monster_id = 26010101, pos = { x = 656.161, y = 202.818, z = -931.989 }, rot = { x = 1.603, y = 1.198, z = 8.912 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 332003, monster_id = 26010101, pos = { x = 660.120, y = 203.693, z = -933.064 }, rot = { x = 359.582, y = 2.060, z = 11.475 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332004, gadget_id = 70211012, pos = { x = 658.309, y = 203.171, z = -931.770 }, rot = { x = 8.575, y = 347.864, z = 14.167 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 332005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 658.641, y = 203.924, z = -931.765 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1332005, name = "ENTER_REGION_332005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_332005", action = "action_EVENT_ENTER_REGION_332005" },
	{ config_id = 1332006, name = "ANY_MONSTER_DIE_332006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_332006", action = "action_EVENT_ANY_MONSTER_DIE_332006" }
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
		gadgets = { 332004 },
		regions = { 332005 },
		triggers = { "ENTER_REGION_332005", "ANY_MONSTER_DIE_332006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 332001, 332002, 332003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_332006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_332005(context, evt)
	if evt.param1 ~= 332005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_332005(context, evt)
	-- 将configid为 332004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008332, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_332006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_332006(context, evt)
	-- 将configid为 332004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332004, GadgetState.Default) then
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