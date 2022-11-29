-- 基础信息
local base_info = {
	group_id = 250016039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 21010501, pos = { x = -371.279, y = -11.000, z = -221.357 }, rot = { x = 0.000, y = 81.866, z = 0.000 }, level = 1 },
	{ config_id = 39002, monster_id = 21010501, pos = { x = -372.155, y = -11.000, z = -218.448 }, rot = { x = 0.000, y = 84.962, z = 0.000 }, level = 1 },
	{ config_id = 39003, monster_id = 21010501, pos = { x = -373.073, y = -11.000, z = -215.258 }, rot = { x = 0.000, y = 70.464, z = 0.000 }, level = 1 },
	{ config_id = 39004, monster_id = 21010501, pos = { x = -372.162, y = -11.000, z = -212.414 }, rot = { x = 0.000, y = 88.040, z = 0.000 }, level = 1 },
	{ config_id = 39005, monster_id = 21010501, pos = { x = -371.725, y = -11.000, z = -209.502 }, rot = { x = 0.000, y = 92.749, z = 0.000 }, level = 1 },
	{ config_id = 39006, monster_id = 21010501, pos = { x = -369.865, y = -11.000, z = -207.319 }, rot = { x = 0.000, y = 90.734, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 39007, gadget_id = 70220019, pos = { x = -366.528, y = -11.000, z = -222.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 39008, gadget_id = 70310004, pos = { x = -370.879, y = -11.000, z = -219.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 39009, gadget_id = 70310004, pos = { x = -370.785, y = -11.000, z = -211.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 39010, gadget_id = 70220007, pos = { x = -369.930, y = -11.000, z = -205.102 }, rot = { x = 0.000, y = 333.380, z = 0.000 }, level = 1 },
	{ config_id = 39011, gadget_id = 70220015, pos = { x = -370.233, y = -11.000, z = -208.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 39012, gadget_id = 70310001, pos = { x = -370.380, y = -11.000, z = -214.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1039013, name = "ANY_MONSTER_DIE_39013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39013", action = "action_EVENT_ANY_MONSTER_DIE_39013" }
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
		monsters = { 39001, 39002, 39003, 39004, 39005, 39006 },
		gadgets = { 39008, 39009, 39010, 39011, 39012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_39013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016039) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39013(context, evt)
	-- 创建id为39007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 39007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end