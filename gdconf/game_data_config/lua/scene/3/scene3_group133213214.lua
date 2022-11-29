-- 基础信息
local base_info = {
	group_id = 133213214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214001, monster_id = 21020801, pos = { x = -2943.138, y = 200.008, z = -3307.672 }, rot = { x = 359.937, y = 67.488, z = 359.885 }, level = 27, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214003, gadget_id = 70211011, pos = { x = -2943.865, y = 199.985, z = -3312.186 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 214004, gadget_id = 70220013, pos = { x = -2947.227, y = 200.000, z = -3304.002 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 27, area_id = 12 },
	{ config_id = 214005, gadget_id = 70220013, pos = { x = -2936.962, y = 200.059, z = -3320.647 }, rot = { x = 359.873, y = 21.003, z = 359.966 }, level = 27, area_id = 12 },
	{ config_id = 214006, gadget_id = 70220013, pos = { x = -2941.452, y = 200.056, z = -3330.671 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 27, area_id = 12 },
	{ config_id = 214007, gadget_id = 70220013, pos = { x = -2943.442, y = 200.059, z = -3332.453 }, rot = { x = 359.918, y = 314.892, z = 0.102 }, level = 27, area_id = 12 },
	{ config_id = 214008, gadget_id = 70220014, pos = { x = -2940.293, y = 201.696, z = -3326.590 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 27, area_id = 12 },
	{ config_id = 214009, gadget_id = 70220014, pos = { x = -2937.900, y = 200.046, z = -3311.226 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 27, area_id = 12 },
	{ config_id = 214010, gadget_id = 70220014, pos = { x = -2949.075, y = 200.000, z = -3304.535 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 27, area_id = 12 },
	{ config_id = 214011, gadget_id = 70310006, pos = { x = -2946.057, y = 200.075, z = -3329.433 }, rot = { x = 359.870, y = 0.000, z = 0.014 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214002, name = "ANY_MONSTER_DIE_214002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_214002", action = "action_EVENT_ANY_MONSTER_DIE_214002" }
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
		monsters = { 214001 },
		gadgets = { 214004, 214005, 214006, 214007, 214008, 214009, 214010, 214011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_214002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_214002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213214) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_214002(context, evt)
	-- 创建id为214003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 214003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end