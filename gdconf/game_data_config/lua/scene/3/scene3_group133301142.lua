-- 基础信息
local base_info = {
	group_id = 133301142
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142001, monster_id = 20011201, pos = { x = -643.706, y = 126.874, z = 3787.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 25 },
	{ config_id = 142006, monster_id = 20011301, pos = { x = -635.262, y = 126.263, z = 3777.624 }, rot = { x = 0.000, y = 277.522, z = 0.000 }, level = 33, drop_tag = "大史莱姆", area_id = 25 },
	{ config_id = 142007, monster_id = 20011301, pos = { x = -632.754, y = 125.852, z = 3790.035 }, rot = { x = 0.000, y = 209.490, z = 0.000 }, level = 33, drop_tag = "大史莱姆", area_id = 25 },
	{ config_id = 142008, monster_id = 20011201, pos = { x = -637.989, y = 128.125, z = 3768.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 25 },
	{ config_id = 142010, monster_id = 20011301, pos = { x = -646.098, y = 127.701, z = 3784.487 }, rot = { x = 0.000, y = 108.165, z = 0.000 }, level = 33, drop_tag = "大史莱姆", area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 142002, gadget_id = 70211151, pos = { x = -648.350, y = 127.863, z = 3787.771 }, rot = { x = 9.065, y = 105.625, z = 5.740 }, level = 26, chest_drop_id = 21910056, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 },
	{ config_id = 142003, gadget_id = 70310001, pos = { x = -634.821, y = 128.360, z = 3763.401 }, rot = { x = 358.757, y = 348.251, z = 354.046 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 142004, gadget_id = 70310001, pos = { x = -643.414, y = 126.338, z = 3804.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 142005, gadget_id = 70310001, pos = { x = -641.878, y = 132.986, z = 3739.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142009, name = "MONSTER_BATTLE_142009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_142009", action = "action_EVENT_MONSTER_BATTLE_142009" },
	{ config_id = 1142011, name = "ANY_MONSTER_DIE_142011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142011", action = "action_EVENT_ANY_MONSTER_DIE_142011" },
	{ config_id = 1142012, name = "QUEST_FINISH_142012", event = EventType.EVENT_QUEST_FINISH, source = "7303510", condition = "", action = "action_EVENT_QUEST_FINISH_142012", trigger_count = 0 }
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
	suite = 3,
	end_suite = 1,
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
		monsters = { 142001, 142008, 142010 },
		gadgets = { 142002, 142003, 142004, 142005 },
		regions = { },
		triggers = { "MONSTER_BATTLE_142009", "ANY_MONSTER_DIE_142011", "QUEST_FINISH_142012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 142006, 142007 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_142012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_142012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_142009(context, evt)
	if 142010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_142009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301142) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142011(context, evt)
	-- 将configid为 142002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_142012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301142, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"