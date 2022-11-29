-- 基础信息
local base_info = {
	group_id = 133104390
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 390001, monster_id = 20011401, pos = { x = 776.001, y = 251.552, z = 1621.036 }, rot = { x = 0.000, y = 184.939, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 390002, monster_id = 20011401, pos = { x = 774.243, y = 251.247, z = 1622.922 }, rot = { x = 0.000, y = 184.939, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 390003, monster_id = 20011401, pos = { x = 777.852, y = 251.784, z = 1623.359 }, rot = { x = 0.000, y = 184.939, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 390004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 776.062, y = 251.513, z = 1623.290 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1390004, name = "ENTER_REGION_390004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_390004", action = "action_EVENT_ENTER_REGION_390004" },
	{ config_id = 1390005, name = "ANY_MONSTER_DIE_390005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_390005", action = "action_EVENT_ANY_MONSTER_DIE_390005" }
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
		regions = { 390004 },
		triggers = { "ENTER_REGION_390004", "ANY_MONSTER_DIE_390005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 390001, 390002, 390003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_390005" },
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
function condition_EVENT_ENTER_REGION_390004(context, evt)
	if evt.param1 ~= 390004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_390004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104390, 2)
	
	-- 改变指定group组133104277中， configid为277028的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104277, 277028, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_390005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_390005(context, evt)
	-- 改变指定group组133104277中， configid为277028的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104277, 277028, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104390, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end