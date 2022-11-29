-- 基础信息
local base_info = {
	group_id = 133303029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 26120101, pos = { x = -1812.845, y = -8.190, z = 3216.567 }, rot = { x = 0.000, y = 238.445, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1050, 5211, 5210 }, pose_id = 104, title_id = 10127, special_name_id = 10178, area_id = 23 },
	{ config_id = 29004, monster_id = 26120201, pos = { x = -1806.614, y = -8.190, z = 3217.656 }, rot = { x = 0.000, y = 327.669, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 23 },
	{ config_id = 29005, monster_id = 26120301, pos = { x = -1816.795, y = -8.190, z = 3220.636 }, rot = { x = 0.000, y = 64.933, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 29006, monster_id = 26090401, pos = { x = -1809.118, y = -8.190, z = 3226.047 }, rot = { x = 0.000, y = 231.909, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 29007, monster_id = 26090401, pos = { x = -1816.108, y = -8.190, z = 3225.728 }, rot = { x = 0.000, y = 139.697, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29008, gadget_id = 70900388, pos = { x = -1816.931, y = -8.190, z = 3227.090 }, rot = { x = 0.000, y = 318.517, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 29009, gadget_id = 70900388, pos = { x = -1815.392, y = -8.190, z = 3219.052 }, rot = { x = 0.000, y = 249.151, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 29010, gadget_id = 70900388, pos = { x = -1810.357, y = -8.190, z = 3230.274 }, rot = { x = 0.000, y = 173.711, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 29011, gadget_id = 70900388, pos = { x = -1806.168, y = -8.190, z = 3220.484 }, rot = { x = 0.000, y = 173.711, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029002, name = "SPECIFIC_MONSTER_HP_CHANGE_29002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "29001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_29002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_29002" },
	{ config_id = 1029003, name = "MONSTER_BATTLE_29003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_29003", action = "action_EVENT_MONSTER_BATTLE_29003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 29012, gadget_id = 70220020, pos = { x = -1814.443, y = -11.706, z = 3211.060 }, rot = { x = 0.000, y = 30.388, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 29013, gadget_id = 70220020, pos = { x = -1815.967, y = -11.143, z = 3208.884 }, rot = { x = 0.000, y = 30.388, z = 0.000 }, level = 30, area_id = 23 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 29001 },
		gadgets = { 29008, 29009, 29010, 29011 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_29002", "MONSTER_BATTLE_29003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 29004, 29005, 29006, 29007 },
		gadgets = { 29008, 29009, 29010, 29011 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_29002(context, evt)
	--[[判断指定configid的怪物的血量小于%52时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 52 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_29002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301814_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_29003(context, evt)
	if 29001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_29003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 29006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 29007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end