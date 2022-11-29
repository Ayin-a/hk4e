-- 基础信息
local base_info = {
	group_id = 230001003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010101, pos = { x = 52.016, y = -0.484, z = -115.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 21010101, pos = { x = 62.307, y = -0.484, z = -108.962 }, rot = { x = 0.000, y = 254.390, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 21010101, pos = { x = 55.714, y = -0.483, z = -101.501 }, rot = { x = 0.000, y = 201.850, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 53.506, y = -0.483, z = -114.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 62.054, y = -0.484, z = -108.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 54.487, y = -0.483, z = -101.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 21010101, pos = { x = 54.891, y = -0.484, z = -113.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21010101, pos = { x = 61.349, y = -0.484, z = -107.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 21010101, pos = { x = 54.279, y = -0.483, z = -101.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 21010201, pos = { x = 50.846, y = -0.484, z = -111.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 21010201, pos = { x = 51.212, y = -0.484, z = -106.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3012, gadget_id = 70211002, pos = { x = 54.855, y = -0.484, z = -108.828 }, rot = { x = 0.000, y = 87.705, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" }
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
		monsters = { 3001, 3002, 3003 },
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3004, 3005, 3006 },
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3007, 3008, 3009, 3010, 3011 },
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 解锁目标3012
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3012, state = GadgetState.Default }) then
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