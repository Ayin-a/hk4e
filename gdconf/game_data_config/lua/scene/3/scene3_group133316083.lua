-- 基础信息
local base_info = {
	group_id = 133316083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83004, monster_id = 22050101, pos = { x = 1043.764, y = 138.094, z = 6359.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 30 },
	{ config_id = 83005, monster_id = 22050101, pos = { x = 1048.608, y = 138.000, z = 6366.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83001, gadget_id = 70350433, pos = { x = 1056.611, y = 152.978, z = 6398.231 }, rot = { x = 0.000, y = 185.640, z = 353.000 }, level = 1, area_id = 30 },
	{ config_id = 83002, gadget_id = 70330404, pos = { x = 1058.669, y = 149.366, z = 6392.377 }, rot = { x = 0.064, y = 120.635, z = 349.754 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083003, name = "GADGET_STATE_CHANGE_83003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83003", action = "action_EVENT_GADGET_STATE_CHANGE_83003" }
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
		monsters = { 83004, 83005 },
		gadgets = { 83001, 83002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_83003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83003(context, evt)
	if 83002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,83001, GadgetState.GearStart)
	
	return 0
end