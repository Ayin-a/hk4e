-- 基础信息
local base_info = {
	group_id = 244006003
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
	{ config_id = 3008, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.084, y = 0.066, z = -0.110 } }
}

-- 触发器
triggers = {
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_3008" }
}

-- 点位
points = {
	{ config_id = 3001, pos = { x = 9.506, y = 0.046, z = -14.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3002, pos = { x = -0.139, y = 0.046, z = -16.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3003, pos = { x = -9.325, y = 0.046, z = -14.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3004, pos = { x = 0.081, y = 0.047, z = -8.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3005, pos = { x = 5.987, y = 0.047, z = -6.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3006, pos = { x = -6.494, y = 0.047, z = -5.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 3007, pos = { x = 0.212, y = 0.047, z = -4.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function action_EVENT_ENTER_REGION_3008(context, evt)
	
	--  在Group244006003从怪物潮池{13025}中随机创建一个TideIndex为5的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只, pointTag 为 2  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 5, 244006003, {13025},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 2, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	
	--  在Group244006003从怪物潮池{13026}中随机创建一个TideIndex为6的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 6, 244006003, {13026},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	return 0
end