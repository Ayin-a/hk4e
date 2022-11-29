-- 基础信息
local base_info = {
	group_id = 133304097
}

-- Trigger变量
local defs = {
	group_id = 133304097
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 97004, monster_id = 25210301, pos = { x = -1737.769, y = 267.637, z = 2834.650 }, rot = { x = 0.000, y = 244.206, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 9511, area_id = 21 },
	{ config_id = 97006, monster_id = 25210201, pos = { x = -1735.331, y = 268.394, z = 2830.841 }, rot = { x = 0.000, y = 266.138, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 9511, area_id = 21 },
	{ config_id = 97008, monster_id = 25210201, pos = { x = -1738.759, y = 270.365, z = 2828.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 9511, area_id = 21 },
	{ config_id = 97009, monster_id = 25210301, pos = { x = -1735.454, y = 267.493, z = 2833.147 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 21 },
	{ config_id = 97011, monster_id = 25210201, pos = { x = -1737.179, y = 269.746, z = 2829.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9505, area_id = 21 },
	{ config_id = 97013, monster_id = 25210201, pos = { x = -1742.644, y = 271.604, z = 2828.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 97014, gadget_id = 70300104, pos = { x = -1740.414, y = 274.235, z = 2819.342 }, rot = { x = 358.166, y = 207.827, z = 13.354 }, level = 1, area_id = 21 },
	{ config_id = 97015, gadget_id = 70310006, pos = { x = -1738.920, y = 269.552, z = 2831.046 }, rot = { x = 19.615, y = 354.039, z = 342.723 }, level = 1, area_id = 21 },
	{ config_id = 97016, gadget_id = 70290196, pos = { x = -1740.195, y = 265.538, z = 2834.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097001, name = "GROUP_LOAD_97001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_97001", trigger_count = 0 },
	{ config_id = 1097002, name = "HUNTING_FINISH_FINAL_97002", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_97002" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 97003, pos = { x = -1741.698, y = 270.089, z = 2831.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 97005, monster_id = 25210101, pos = { x = -1735.608, y = 267.559, z = 2833.121 }, rot = { x = 0.000, y = 256.333, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 9505, area_id = 21 },
		{ config_id = 97007, monster_id = 25210401, pos = { x = -1737.046, y = 269.737, z = 2828.927 }, rot = { x = 0.000, y = 324.237, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6111 }, pose_id = 9511, area_id = 21 },
		{ config_id = 97010, monster_id = 25210101, pos = { x = -1734.131, y = 267.717, z = 2831.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 21 },
		{ config_id = 97012, monster_id = 25210401, pos = { x = -1741.068, y = 272.132, z = 2826.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 }
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
		gadgets = { 97016 },
		regions = { },
		triggers = { "GROUP_LOAD_97001", "HUNTING_FINISH_FINAL_97002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雷战斧-链接,
		monsters = { 97004, 97006, 97008 },
		gadgets = { 97014, 97015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 双刃-起死回生,
		monsters = { 97009, 97011, 97013 },
		gadgets = { 97014, 97015 },
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
function action_EVENT_GROUP_LOAD_97001(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133304097, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_97002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end