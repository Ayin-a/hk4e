-- 基础信息
local base_info = {
	group_id = 244003005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21020401, pos = { x = -290.767, y = 31.754, z = 170.786 }, rot = { x = 0.000, y = 51.360, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6110 }, pose_id = 401 }
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
	{ config_id = 1005002, name = "ANY_MONSTER_DIE_5002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5002", action = "action_EVENT_ANY_MONSTER_DIE_5002" },
	{ config_id = 1005014, name = "SPECIFIC_MONSTER_HP_CHANGE_5014", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "5001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5014", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SummonWave", value = 2, no_refresh = false }
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
		monsters = { 5001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5002", "SPECIFIC_MONSTER_HP_CHANGE_5014" },
		rand_weight = 0
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_DIE_5002(context, evt)
	--判断死亡怪物的configid是否为 5001
	if evt.param1 ~= 5001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5002(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244003006, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5014(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_5014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244003006, 2)
	
	return 0
end