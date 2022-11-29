-- 基础信息
local base_info = {
	group_id = 243004014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14002, gadget_id = 70900205, pos = { x = 25.910, y = 18.618, z = -42.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014001, name = "DUNGEON_ALL_AVATAR_DIE_14001", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_14001", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_14001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "AvatarDie", value = 0, no_refresh = false }
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
		gadgets = { 14002 },
		regions = { },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_14001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_14001(context, evt)
	-- 判断变量"AvatarDie"为0
	if ScriptLib.GetGroupVariableValue(context, "AvatarDie") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_14001(context, evt)
	-- 挑战失败触发结算
	if 0 ~= ScriptLib.FailMistTrialDungeonChallenge(context, 999) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 结束挑战失败！！！！")
		return -1
	end
	
	return 0
end