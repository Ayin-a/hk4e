-- 基础信息
local base_info = {
	group_id = 133104449
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 449001, monster_id = 26060101, pos = { x = 742.989, y = 230.700, z = 1649.930 }, rot = { x = 0.000, y = 220.749, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 449002, monster_id = 26060101, pos = { x = 742.670, y = 230.724, z = 1652.490 }, rot = { x = 0.000, y = 220.749, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 449003, monster_id = 26060101, pos = { x = 745.849, y = 230.700, z = 1650.734 }, rot = { x = 0.000, y = 220.749, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 449004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 744.359, y = 230.972, z = 1651.727 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1449004, name = "ENTER_REGION_449004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_449004", action = "action_EVENT_ENTER_REGION_449004" },
	{ config_id = 1449005, name = "ANY_MONSTER_DIE_449005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_449005", action = "action_EVENT_ANY_MONSTER_DIE_449005" }
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
		regions = { 449004 },
		triggers = { "ENTER_REGION_449004", "ANY_MONSTER_DIE_449005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 449001, 449002, 449003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_449005" },
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
function condition_EVENT_ENTER_REGION_449004(context, evt)
	if evt.param1 ~= 449004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_449004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104449, 2)
	
	-- 改变指定group组133104277中， configid为277009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104277, 277009, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_449005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_449005(context, evt)
	-- 改变指定group组133104277中， configid为277009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104277, 277009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104449, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end