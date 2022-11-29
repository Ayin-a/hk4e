-- 基础信息
local base_info = {
	group_id = 133308496
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 496001, monster_id = 26090701, pos = { x = -2086.739, y = 300.058, z = 3966.452 }, rot = { x = 0.000, y = 201.563, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 496002, monster_id = 26090601, pos = { x = -2110.499, y = 296.890, z = 3980.813 }, rot = { x = 0.000, y = 186.933, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 103, area_id = 26 },
	{ config_id = 496003, monster_id = 26090601, pos = { x = -2112.021, y = 296.623, z = 3979.412 }, rot = { x = 0.000, y = 23.738, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 103, area_id = 26 },
	{ config_id = 496004, monster_id = 26090901, pos = { x = -2106.858, y = 299.672, z = 3952.025 }, rot = { x = 0.000, y = 62.275, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 496005, gadget_id = 70330266, pos = { x = -2106.886, y = 299.778, z = 3951.738 }, rot = { x = 338.970, y = 226.036, z = 353.160 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1496006, name = "ANY_GADGET_DIE_496006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_496006", action = "action_EVENT_ANY_GADGET_DIE_496006" }
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
		monsters = { 496001, 496002, 496003 },
		gadgets = { 496005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_496006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_496006(context, evt)
	if 496005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_496006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 496004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end