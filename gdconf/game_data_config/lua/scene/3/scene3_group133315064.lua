-- 基础信息
local base_info = {
	group_id = 133315064
}

-- Trigger变量
local defs = {
	group_id = 133315064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64004, monster_id = 26090101, pos = { x = 421.412, y = 297.980, z = 2468.010 }, rot = { x = 0.000, y = 192.457, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 64005, monster_id = 26090101, pos = { x = 416.848, y = 299.004, z = 2467.556 }, rot = { x = 0.000, y = 141.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 64006, monster_id = 26090501, pos = { x = 417.855, y = 297.697, z = 2457.571 }, rot = { x = 0.000, y = 21.324, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 64007, monster_id = 26090501, pos = { x = 424.527, y = 296.617, z = 2458.392 }, rot = { x = 0.000, y = 310.281, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 64008, monster_id = 26090801, pos = { x = 421.412, y = 297.980, z = 2468.010 }, rot = { x = 0.000, y = 192.457, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 },
	{ config_id = 64009, monster_id = 26090801, pos = { x = 416.848, y = 299.004, z = 2467.556 }, rot = { x = 0.000, y = 141.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 },
	{ config_id = 64010, monster_id = 26090501, pos = { x = 417.855, y = 297.697, z = 2457.571 }, rot = { x = 0.000, y = 21.324, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 },
	{ config_id = 64011, monster_id = 26090501, pos = { x = 424.527, y = 296.617, z = 2458.392 }, rot = { x = 0.000, y = 310.281, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64012, gadget_id = 70290196, pos = { x = 421.866, y = 293.799, z = 2465.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1064001, name = "GROUP_LOAD_64001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_64001", trigger_count = 0 },
	{ config_id = 1064002, name = "HUNTING_FINISH_FINAL_64002", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_64002" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 64003, pos = { x = 420.726, y = 297.139, z = 2463.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 64012 },
		regions = { },
		triggers = { "GROUP_LOAD_64001", "HUNTING_FINISH_FINAL_64002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 锐气水蕈兽,
		monsters = { 64004, 64005, 64006, 64007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 链接水蕈兽,
		monsters = { 64008, 64009, 64010, 64011 },
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
function action_EVENT_GROUP_LOAD_64001(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133315064, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_64002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end