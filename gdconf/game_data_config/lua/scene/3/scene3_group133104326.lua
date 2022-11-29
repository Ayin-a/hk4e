-- 基础信息
local base_info = {
	group_id = 133104326
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 326001, monster_id = 20011401, pos = { x = 877.500, y = 230.702, z = 1795.465 }, rot = { x = 0.000, y = 220.749, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 326002, monster_id = 20011401, pos = { x = 877.181, y = 230.702, z = 1798.025 }, rot = { x = 0.000, y = 220.749, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 326003, monster_id = 20011401, pos = { x = 880.360, y = 230.755, z = 1796.269 }, rot = { x = 0.000, y = 220.749, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 326004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 878.871, y = 231.361, z = 1797.261 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1326004, name = "ENTER_REGION_326004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_326004", action = "action_EVENT_ENTER_REGION_326004" },
	{ config_id = 1326005, name = "ANY_MONSTER_DIE_326005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_326005", action = "action_EVENT_ANY_MONSTER_DIE_326005" }
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
	end_suite = 3,
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 326004 },
		triggers = { "ENTER_REGION_326004", "ANY_MONSTER_DIE_326005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 326001, 326002, 326003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_326005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_326004(context, evt)
	if evt.param1 ~= 326004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_326004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104326, 2)
	
	-- 改变指定group组133104277中， configid为277005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104277, 277005, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_326005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_326005(context, evt)
	-- 改变指定group组133104277中， configid为277005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104277, 277005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104326, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end