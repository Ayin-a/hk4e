-- 基础信息
local base_info = {
	group_id = 133315262
}

-- Trigger变量
local defs = {
	group_id = 133315262
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 26090101, pos = { x = 421.412, y = 297.980, z = 2468.010 }, rot = { x = 0.000, y = 192.457, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 262002, monster_id = 26090101, pos = { x = 416.848, y = 299.004, z = 2467.556 }, rot = { x = 0.000, y = 141.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 262003, monster_id = 26090501, pos = { x = 417.855, y = 297.697, z = 2457.571 }, rot = { x = 0.000, y = 21.324, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 262004, monster_id = 26090501, pos = { x = 424.527, y = 296.617, z = 2458.392 }, rot = { x = 0.000, y = 310.281, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 262005, monster_id = 26090801, pos = { x = 421.412, y = 297.980, z = 2468.010 }, rot = { x = 0.000, y = 192.457, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 },
	{ config_id = 262006, monster_id = 26090801, pos = { x = 416.848, y = 299.004, z = 2467.556 }, rot = { x = 0.000, y = 141.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 },
	{ config_id = 262007, monster_id = 26090501, pos = { x = 417.855, y = 297.697, z = 2457.571 }, rot = { x = 0.000, y = 21.324, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 },
	{ config_id = 262008, monster_id = 26090501, pos = { x = 424.527, y = 296.617, z = 2458.392 }, rot = { x = 0.000, y = 310.281, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262012, gadget_id = 70290196, pos = { x = 419.889, y = 287.948, z = 2466.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262009, name = "GROUP_LOAD_262009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_262009", trigger_count = 0 },
	{ config_id = 1262010, name = "HUNTING_FINISH_FINAL_262010", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_262010" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 262011, pos = { x = 420.726, y = 297.139, z = 2463.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 262012 },
		regions = { },
		triggers = { "GROUP_LOAD_262009", "HUNTING_FINISH_FINAL_262010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 262001, 262002, 262003, 262004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 262005, 262006, 262007, 262008 },
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
	},
	{
		-- suite_id = 5,
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

-- 触发操作
function action_EVENT_GROUP_LOAD_262009(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133315262, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_262010(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end