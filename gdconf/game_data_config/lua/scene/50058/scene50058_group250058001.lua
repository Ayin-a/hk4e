-- 基础信息
local base_info = {
	group_id = 250058001
}

-- DEFS_MISCS
local defs = {
    BossConfigID = 1001,
    GroupID = 250058001,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29060102, pos = { x = 492.312, y = 100.542, z = 488.196 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1, title_id = 152, special_name_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "SPECIFIC_MONSTER_HP_CHANGE_1002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1002" }
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
		monsters = { 1001 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_1002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1002(context, evt)
	--[[判断指定configid的怪物的血量小于%2时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1002(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 250058001, EntityType.MONSTER, 1001)
	
		
	
	return 0
end

require "V2_1/Boss_Shougun_Beta"