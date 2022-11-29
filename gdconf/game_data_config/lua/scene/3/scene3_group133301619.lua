-- 基础信息
local base_info = {
	group_id = 133301619
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 619001, monster_id = 20010401, pos = { x = -1005.209, y = 342.139, z = 3189.255 }, rot = { x = 0.000, y = 228.665, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 23 },
	{ config_id = 619002, monster_id = 20010301, pos = { x = -1015.392, y = 339.839, z = 3192.181 }, rot = { x = 0.000, y = 146.222, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 },
	{ config_id = 619003, monster_id = 20010301, pos = { x = -1013.053, y = 340.663, z = 3196.108 }, rot = { x = 0.000, y = 160.950, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 619004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1009.340, y = 341.940, z = 3190.825 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1619004, name = "ENTER_REGION_619004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_619004", action = "action_EVENT_ENTER_REGION_619004" }
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
		regions = { 619004 },
		triggers = { "ENTER_REGION_619004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 619001, 619002, 619003 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_619004(context, evt)
	if evt.param1 ~= 619004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_619004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301619, 2)
	
	return 0
end