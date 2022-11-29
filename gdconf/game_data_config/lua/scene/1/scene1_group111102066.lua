-- 基础信息
local base_info = {
	group_id = 111102066
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24001,
challenge_time = 90,
--挑战操作台的configID
starter_gadget = 66002, 
--终点region的configID
end_regionID = 66009, 
--开启操作台后立刻加载的suites
load_on_start = {2,3,5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {66010, 66011, 66012},
guide_regionID = 66003,
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
	{ config_id = 66002, gadget_id = 70350357, pos = { x = 1309.015, y = 304.872, z = -1795.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66004, gadget_id = 70220121, pos = { x = 1285.146, y = 308.033, z = -1795.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66005, gadget_id = 70220121, pos = { x = 1254.578, y = 309.628, z = -1791.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66006, gadget_id = 70220121, pos = { x = 1233.958, y = 308.184, z = -1765.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66007, gadget_id = 70220122, pos = { x = 1266.234, y = 311.184, z = -1799.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 66008, gadget_id = 70360025, pos = { x = 1223.175, y = 306.058, z = -1756.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 教学区REGION
	{ config_id = 66003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1308.716, y = 304.806, z = -1795.869 } },
	-- 终点REGION
	{ config_id = 66009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1222.620, y = 305.688, z = -1756.234 } },
	{ config_id = 66010, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1295.780, y = 301.402, z = -1794.687 } },
	{ config_id = 66011, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1257.738, y = 301.402, z = -1794.687 } },
	{ config_id = 66012, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1218.332, y = 289.942, z = -1778.827 } },
	-- 加载suite4，卸载suite2
	{ config_id = 66013, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 50.000 }, pos = { x = 1256.867, y = 307.125, z = -1786.686 } }
}

-- 触发器
triggers = {
	-- 加载suite4，卸载suite2
	{ config_id = 1066013, name = "ENTER_REGION_66013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_66013", trigger_count = 0 }
}

-- 点位
points = {
	-- 复活点
	{ config_id = 66001, pos = { x = 1311.536, y = 304.675, z = -1793.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		-- description = 机关SUITE,
		monsters = { },
		gadgets = { 66002 },
		regions = { 66003 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 关卡分段1,
		monsters = { },
		gadgets = { 66004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 关卡分段2,
		monsters = { },
		gadgets = { 66005, 66007 },
		regions = { 66013 },
		triggers = { "ENTER_REGION_66013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 关卡分段3,
		monsters = { },
		gadgets = { 66006, 66008 },
		regions = { 66009 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 赛道REGION,
		monsters = { },
		gadgets = { },
		regions = { 66010, 66011, 66012 },
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
function action_EVENT_ENTER_REGION_66013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102066, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111102066, 2)
	
	return 0
end

require "V3_0/Activity_Parkour"