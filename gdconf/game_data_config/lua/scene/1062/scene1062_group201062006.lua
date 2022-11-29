-- 基础信息
local base_info = {
	group_id = 201062006
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
	{ config_id = 6002, gadget_id = 70900205, pos = { x = 222.603, y = 1.598, z = -21.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70211121, pos = { x = 238.919, y = 4.023, z = -19.912 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 11, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true },
	{ config_id = 6004, gadget_id = 70211001, pos = { x = 207.706, y = 4.643, z = -6.062 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 6005, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 40.000 }, pos = { x = 204.094, y = 8.952, z = -19.942 } }
}

-- 触发器
triggers = {
	{ config_id = 1006001, name = "DUNGEON_SETTLE_6001", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_6001", action = "action_EVENT_DUNGEON_SETTLE_6001" },
	{ config_id = 1006005, name = "ENTER_REGION_6005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6005", action = "action_EVENT_ENTER_REGION_6005" }
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
		gadgets = { 6002, 6004 },
		regions = { 6005 },
		triggers = { "DUNGEON_SETTLE_6001", "ENTER_REGION_6005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6003 },
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
function condition_EVENT_DUNGEON_SETTLE_6001(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_6001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6005(context, evt)
	if evt.param1 ~= 6005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6005(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062010, 5)
	
	return 0
end