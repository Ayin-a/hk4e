-- 基础信息
local base_info = {
	group_id = 133316041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41005, monster_id = 24010101, pos = { x = 979.792, y = 134.960, z = 6404.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 30 },
	{ config_id = 41006, monster_id = 24010101, pos = { x = 975.068, y = 134.960, z = 6409.651 }, rot = { x = 0.000, y = 90.366, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41001, gadget_id = 70350433, pos = { x = 961.371, y = 145.235, z = 6385.072 }, rot = { x = 0.000, y = 57.933, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 41002, gadget_id = 70330404, pos = { x = 963.250, y = 142.223, z = 6391.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 30 }
}

-- 区域
regions = {
	{ config_id = 41004, shape = RegionShape.SPHERE, radius = 15, pos = { x = 976.016, y = 134.960, z = 6408.313 }, area_id = 30 }
}

-- 触发器
triggers = {
	{ config_id = 1041003, name = "GADGET_STATE_CHANGE_41003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41003", action = "action_EVENT_GADGET_STATE_CHANGE_41003" },
	{ config_id = 1041004, name = "ENTER_REGION_41004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41004", action = "action_EVENT_ENTER_REGION_41004" },
	{ config_id = 1041007, name = "ANY_MONSTER_DIE_41007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41007", action = "action_EVENT_ANY_MONSTER_DIE_41007" }
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
		-- description = ,
		monsters = { },
		gadgets = { 41001, 41002 },
		regions = { 41004 },
		triggers = { "GADGET_STATE_CHANGE_41003", "ENTER_REGION_41004", "ANY_MONSTER_DIE_41007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 41005, 41006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_41003(context, evt)
	if 41002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,41001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41004(context, evt)
	if evt.param1 ~= 41004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316041, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133316041) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41007(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,41002, GadgetState.Default)
	
	return 0
end