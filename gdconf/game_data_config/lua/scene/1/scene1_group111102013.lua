-- 基础信息
local base_info = {
	group_id = 111102013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 21020101, pos = { x = 1347.608, y = 330.980, z = -2031.476 }, rot = { x = 0.000, y = 119.153, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 13002, monster_id = 21010101, pos = { x = 1351.397, y = 331.217, z = -2035.831 }, rot = { x = 0.000, y = 1.493, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 13003, monster_id = 21010101, pos = { x = 1352.858, y = 331.440, z = -2035.437 }, rot = { x = 0.000, y = 316.710, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 13004, monster_id = 21010101, pos = { x = 1349.900, y = 330.994, z = -2035.203 }, rot = { x = 0.000, y = 33.736, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13007, gadget_id = 70211002, pos = { x = 1352.519, y = 331.696, z = -2032.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 13005, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1349.821, y = 330.817, z = -2031.625 } }
}

-- 触发器
triggers = {
	{ config_id = 1013005, name = "ENTER_REGION_13005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_13005", action = "action_EVENT_ENTER_REGION_13005", trigger_count = 0 },
	{ config_id = 1013008, name = "ANY_MONSTER_DIE_13008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "1", condition = "condition_EVENT_ANY_MONSTER_DIE_13008", action = "action_EVENT_ANY_MONSTER_DIE_13008", trigger_count = 0 }
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
		gadgets = { 13007 },
		regions = { 13005 },
		triggers = { "ENTER_REGION_13005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001, 13002, 13003, 13004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 13007 },
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
function condition_EVENT_ENTER_REGION_13005(context, evt)
	if evt.param1 ~= 13005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102013, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111102013) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13008(context, evt)
	-- 将configid为 13007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111102013, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end