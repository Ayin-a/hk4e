-- 基础信息
local base_info = {
	group_id = 133104766
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
	{ config_id = 1766001, name = "GROUP_LOAD_766001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_766001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 766002, pos = { x = 349.463, y = 189.137, z = 853.502 }, rot = { x = 0.000, y = 196.511, z = 0.000 }, area_id = 6 },
	{ config_id = 766003, pos = { x = 339.447, y = 190.436, z = 849.065 }, rot = { x = 0.000, y = 196.511, z = 0.000 }, area_id = 6 },
	{ config_id = 766004, pos = { x = 352.792, y = 188.325, z = 848.384 }, rot = { x = 0.000, y = 196.511, z = 0.000 }, area_id = 6 },
	{ config_id = 766005, pos = { x = 342.827, y = 189.966, z = 846.153 }, rot = { x = 0.000, y = 196.511, z = 0.000 }, area_id = 6 },
	{ config_id = 766006, pos = { x = 347.770, y = 189.082, z = 848.119 }, rot = { x = 0.000, y = 196.511, z = 0.000 }, area_id = 6 }
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
		triggers = { "GROUP_LOAD_766001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_766001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end