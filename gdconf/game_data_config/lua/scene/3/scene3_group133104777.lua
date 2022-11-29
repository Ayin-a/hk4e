-- 基础信息
local base_info = {
	group_id = 133104777
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1777001, name = "GROUP_LOAD_777001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_777001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 777002, pos = { x = 439.404, y = 182.163, z = 880.711 }, rot = { x = 347.712, y = 359.423, z = 5.356 }, area_id = 6 },
	{ config_id = 777003, pos = { x = 439.186, y = 183.154, z = 885.884 }, rot = { x = 347.712, y = 359.423, z = 5.356 }, area_id = 6 },
	{ config_id = 777004, pos = { x = 443.346, y = 182.223, z = 879.416 }, rot = { x = 347.712, y = 359.423, z = 5.356 }, area_id = 6 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_777001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_777001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end