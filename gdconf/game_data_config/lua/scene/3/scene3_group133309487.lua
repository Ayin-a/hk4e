-- 基础信息
local base_info = {
	group_id = 133309487
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 487003, monster_id = 24040301, pos = { x = -2527.710, y = 147.607, z = 5251.585 }, rot = { x = 0.000, y = 199.449, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1003, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 487001, gadget_id = 70330342, pos = { x = -2520.962, y = 147.463, z = 5252.766 }, rot = { x = 349.400, y = 0.332, z = 356.424 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 487004, shape = RegionShape.SPHERE, radius = 12, pos = { x = -2523.526, y = 147.653, z = 5252.968 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1487004, name = "ENTER_REGION_487004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487004", action = "action_EVENT_ENTER_REGION_487004" }
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
		gadgets = { 487001 },
		regions = { 487004 },
		triggers = { "ENTER_REGION_487004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 487003 },
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
function condition_EVENT_ENTER_REGION_487004(context, evt)
	if evt.param1 ~= 487004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309487, 2)
	
	return 0
end