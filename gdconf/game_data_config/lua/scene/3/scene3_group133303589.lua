-- 基础信息
local base_info = {
	group_id = 133303589
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 589001, monster_id = 28020313, pos = { x = -1795.479, y = 365.484, z = 3718.750 }, rot = { x = 0.000, y = 238.825, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 },
	{ config_id = 589002, monster_id = 28020314, pos = { x = -1795.127, y = 364.515, z = 3716.305 }, rot = { x = 0.000, y = 325.821, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 },
	{ config_id = 589003, monster_id = 28020314, pos = { x = -1798.097, y = 364.515, z = 3716.397 }, rot = { x = 0.000, y = 47.244, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 589005, gadget_id = 70217020, pos = { x = -1791.279, y = 375.494, z = 3730.263 }, rot = { x = 14.965, y = 166.700, z = 10.414 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 589004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1796.625, y = 364.515, z = 3716.328 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1589004, name = "ENTER_REGION_589004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_589004", action = "action_EVENT_ENTER_REGION_589004" }
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
		gadgets = { 589005 },
		regions = { 589004 },
		triggers = { "ENTER_REGION_589004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 589001, 589002, 589003 },
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
function condition_EVENT_ENTER_REGION_589004(context, evt)
	if evt.param1 ~= 589004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_589004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303589, 2)
	
	return 0
end