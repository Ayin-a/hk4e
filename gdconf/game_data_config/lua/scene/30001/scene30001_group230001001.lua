-- 基础信息
local base_info = {
	group_id = 230001001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2, monster_id = 20011201, pos = { x = 2.083, y = 0.017, z = -70.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3, monster_id = 20011201, pos = { x = -9.968, y = 0.017, z = -70.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4, monster_id = 20011201, pos = { x = -15.529, y = 0.017, z = -65.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 57, monster_id = 20010801, pos = { x = -5.384, y = 0.017, z = -68.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 58, monster_id = 20010801, pos = { x = -0.100, y = 0.016, z = -65.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 59, monster_id = 20010801, pos = { x = -8.596, y = 0.016, z = -63.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 60, monster_id = 20011401, pos = { x = -11.888, y = 0.016, z = -67.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 61, monster_id = 20011401, pos = { x = -5.185, y = 0.017, z = -70.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62, monster_id = 20011401, pos = { x = -2.498, y = 0.017, z = -63.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 63, monster_id = 20010501, pos = { x = -10.431, y = 0.016, z = -63.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 64, monster_id = 20010501, pos = { x = -6.823, y = 0.016, z = -68.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 65, monster_id = 20010501, pos = { x = -0.250, y = 0.016, z = -65.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66, monster_id = 20011001, pos = { x = -3.629, y = 0.017, z = -63.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1, gadget_id = 70211002, pos = { x = -5.007, y = 0.016, z = -62.663 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000019, name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19" }
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
		monsters = { 2, 3, 4 },
		gadgets = { 1 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 57, 58, 59 },
		gadgets = { 1 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 60, 61, 62 },
		gadgets = { 1 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 63, 64, 65, 66 },
		gadgets = { 1 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 解锁目标1
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1, state = GadgetState.Default }) then
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