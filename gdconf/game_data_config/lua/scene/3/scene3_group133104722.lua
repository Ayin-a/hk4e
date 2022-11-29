-- 基础信息
local base_info = {
	group_id = 133104722
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
	{ config_id = 1722001, name = "GROUP_LOAD_722001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_722001", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 722002, pos = { x = 698.182, y = 204.359, z = 264.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 722003, pos = { x = 692.581, y = 204.782, z = 270.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 722004, pos = { x = 706.398, y = 204.047, z = 262.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 }
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
		triggers = { "GROUP_LOAD_722001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_722001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end