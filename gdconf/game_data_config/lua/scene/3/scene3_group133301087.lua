-- 基础信息
local base_info = {
	group_id = 133301087
}

-- DEFS_MISCS
local ACPlay = {
    MailBoxCid = 87001,
    OptionCid = 87002,
    PageLevel02 = 2,
    PageLevel03 = 3,
    WorkOption = 75,
    TargetMailCount01 = 3,
    Reminder01 = 33150021,
    TargetMailCount02 = 2,
    Reminder02 = 33150021,
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
	[87001] = { config_id = 87001, gadget_id = 70310227, pos = { x = -237.888, y = 238.665, z = 3469.677 }, rot = { x = 0.000, y = 52.091, z = 0.000 }, level = 27, area_id = 29 },
	-- 操作台
	[87002] = { config_id = 87002, gadget_id = 70360286, pos = { x = -237.804, y = 239.906, z = 3469.652 }, rot = { x = 0.000, y = 37.232, z = 0.000 }, level = 27, interact_id = 1, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		-- description = 当前存页数量为0级时，对应的布设,
		monsters = { },
		gadgets = { 87001, 87002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 当前存页数量为1级时，对应的布设,
		monsters = { },
		gadgets = { 87001, 87002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 当前存页数量为2级时，对应的布设,
		monsters = { },
		gadgets = { 87001, 87002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 当前存页数量为3级时，对应的布设,
		monsters = { },
		gadgets = { 87001, 87002 },
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

require "V3_0/AranaraCollection"