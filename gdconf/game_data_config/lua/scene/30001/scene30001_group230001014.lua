-- 基础信息
local base_info = {
	group_id = 230001014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35, monster_id = 21010201, pos = { x = -37.883, y = -0.484, z = -143.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36, monster_id = 21010301, pos = { x = -44.134, y = -0.484, z = -149.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37, monster_id = 21010201, pos = { x = -62.640, y = -0.484, z = -142.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38, monster_id = 21010301, pos = { x = -69.318, y = -0.484, z = -148.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 39, monster_id = 21010201, pos = { x = -55.942, y = -0.483, z = -172.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40, monster_id = 21010301, pos = { x = -51.427, y = -0.483, z = -164.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 145, monster_id = 20011401, pos = { x = -37.461, y = -0.483, z = -143.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 146, monster_id = 20011401, pos = { x = -42.721, y = -0.484, z = -148.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 147, monster_id = 20011401, pos = { x = -63.208, y = -0.484, z = -142.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 148, monster_id = 20011401, pos = { x = -70.324, y = -0.484, z = -147.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 149, monster_id = 20011401, pos = { x = -55.992, y = -0.483, z = -173.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 150, monster_id = 20011401, pos = { x = -52.119, y = -0.483, z = -166.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 152, monster_id = 20010301, pos = { x = -43.900, y = -0.484, z = -149.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 153, monster_id = 20010301, pos = { x = -38.690, y = -0.484, z = -142.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 154, monster_id = 20010301, pos = { x = -51.706, y = -0.483, z = -164.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 155, monster_id = 20010301, pos = { x = -55.753, y = -0.483, z = -172.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 156, monster_id = 20010301, pos = { x = -63.535, y = -0.484, z = -141.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 157, monster_id = 20010301, pos = { x = -66.083, y = -0.483, z = -151.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70, gadget_id = 70211002, pos = { x = -51.621, y = -0.483, z = -153.513 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 71, gadget_id = 70211002, pos = { x = -70.580, y = -0.483, z = -169.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000025, name = "ANY_MONSTER_DIE_25", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25", action = "action_EVENT_ANY_MONSTER_DIE_25" }
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
	rand_suite = true
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
		monsters = { 35, 36, 37, 38, 39, 40 },
		gadgets = { 70, 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 145, 146, 147, 148, 149, 150 },
		gadgets = { 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 70, 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 152, 153, 154, 155, 156, 157 },
		gadgets = { 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 解锁目标70
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 70, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 解锁目标71
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 71, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 调用提示id为 20010301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end