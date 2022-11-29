-- 基础信息
local base_info = {
	group_id = 133302342
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 342001, monster_id = 28060201, pos = { x = -906.394, y = 245.182, z = 2828.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
	{ config_id = 342004, monster_id = 20010101, pos = { x = -932.571, y = 233.815, z = 2800.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 201, area_id = 24 },
	{ config_id = 342006, monster_id = 20010101, pos = { x = -925.137, y = 235.344, z = 2796.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 201, area_id = 24 },
	{ config_id = 342007, monster_id = 28030303, pos = { x = -899.971, y = 234.857, z = 2790.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 342008, monster_id = 28030303, pos = { x = -896.163, y = 234.033, z = 2792.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 342009, monster_id = 28030303, pos = { x = -896.127, y = 233.663, z = 2798.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 342003, gadget_id = 70211151, pos = { x = -906.362, y = 246.126, z = 2832.533 }, rot = { x = 0.000, y = 182.042, z = 0.000 }, level = 26, chest_drop_id = 21910073, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1342002, name = "GADGET_STATE_CHANGE_342002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_342002", action = "action_EVENT_GADGET_STATE_CHANGE_342002" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1342005, name = "ANY_MONSTER_DIE_342005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_342005", action = "action_EVENT_ANY_MONSTER_DIE_342005", trigger_count = 0 }
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
	end_suite = 2,
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
		monsters = { 342001, 342004, 342006, 342007, 342008, 342009 },
		gadgets = { 342003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_342002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_342002(context, evt)
	if 342003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_342002(context, evt)
	-- 通知groupid为133302342中,configid为：342001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 342001, 133302342) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end