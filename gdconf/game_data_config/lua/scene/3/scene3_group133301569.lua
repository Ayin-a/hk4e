-- 基础信息
local base_info = {
	group_id = 133301569
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 569005, monster_id = 26090901, pos = { x = -638.609, y = 31.970, z = 3731.873 }, rot = { x = 0.000, y = 97.034, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 569006, monster_id = 26090901, pos = { x = -629.120, y = 31.881, z = 3731.038 }, rot = { x = 0.000, y = 279.067, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 569007, monster_id = 26090901, pos = { x = -634.571, y = 32.896, z = 3727.867 }, rot = { x = 0.000, y = 279.067, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 569001, gadget_id = 70500000, pos = { x = -633.554, y = 32.398, z = 3735.352 }, rot = { x = 27.189, y = 269.501, z = 10.907 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 569002, gadget_id = 70500000, pos = { x = -634.561, y = 32.813, z = 3737.680 }, rot = { x = 0.000, y = 201.099, z = 0.000 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 569003, gadget_id = 70500000, pos = { x = -632.065, y = 32.703, z = 3737.558 }, rot = { x = 10.369, y = 33.528, z = 355.016 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 569004, gadget_id = 70500000, pos = { x = -631.319, y = 32.643, z = 3735.878 }, rot = { x = 349.420, y = 262.642, z = 355.487 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 569009, gadget_id = 70500000, pos = { x = -646.198, y = 32.731, z = 3761.131 }, rot = { x = 348.326, y = 330.715, z = 345.291 }, level = 33, point_type = 1001, area_id = 25 },
	{ config_id = 569010, gadget_id = 70500000, pos = { x = -641.259, y = 32.001, z = 3763.682 }, rot = { x = 4.309, y = 333.099, z = 349.483 }, level = 33, point_type = 1001, area_id = 25 },
	{ config_id = 569011, gadget_id = 70500000, pos = { x = -642.053, y = 32.941, z = 3765.589 }, rot = { x = 0.000, y = 124.264, z = 13.915 }, level = 33, point_type = 1002, area_id = 25 },
	{ config_id = 569012, gadget_id = 70500000, pos = { x = -636.456, y = 38.464, z = 3754.988 }, rot = { x = 1.894, y = 29.928, z = 1.652 }, level = 33, point_type = 1002, area_id = 25 },
	{ config_id = 569013, gadget_id = 70500000, pos = { x = -645.766, y = 33.354, z = 3764.160 }, rot = { x = 1.324, y = 290.604, z = 357.864 }, level = 33, point_type = 1002, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1569008, name = "ANY_GADGET_DIE_569008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_569008", action = "action_EVENT_ANY_GADGET_DIE_569008", trigger_count = 0 }
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
		gadgets = { 569001, 569002, 569003, 569004, 569009, 569010, 569011, 569012, 569013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_569008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_569008(context, evt)
	if 569001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"