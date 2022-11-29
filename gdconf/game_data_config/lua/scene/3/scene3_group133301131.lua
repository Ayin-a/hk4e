-- 基础信息
local base_info = {
	group_id = 133301131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 25210103, pos = { x = -319.698, y = 244.800, z = 3914.781 }, rot = { x = 0.000, y = 225.270, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, area_id = 22 },
	{ config_id = 131002, monster_id = 25210202, pos = { x = -322.369, y = 247.505, z = 3899.865 }, rot = { x = 0.000, y = 342.986, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131003, gadget_id = 70217020, pos = { x = -320.279, y = 245.669, z = 3905.879 }, rot = { x = 12.790, y = 284.763, z = 3.381 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 131004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -320.354, y = 246.135, z = 3905.780 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1131004, name = "ENTER_REGION_131004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_131004", action = "action_EVENT_ENTER_REGION_131004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 131005, monster_id = 25210202, pos = { x = -326.133, y = 245.238, z = 3899.658 }, rot = { x = 0.000, y = 3.604, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, area_id = 22 },
		{ config_id = 131006, monster_id = 28010304, pos = { x = -326.344, y = 245.488, z = 3915.174 }, rot = { x = 0.000, y = 83.516, z = 0.000 }, level = 33, drop_tag = "采集动物", area_id = 22 }
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
		gadgets = { 131003 },
		regions = { 131004 },
		triggers = { "ENTER_REGION_131004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131001, 131002 },
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
function condition_EVENT_ENTER_REGION_131004(context, evt)
	if evt.param1 ~= 131004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_131004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301131, 2)
	
	return 0
end