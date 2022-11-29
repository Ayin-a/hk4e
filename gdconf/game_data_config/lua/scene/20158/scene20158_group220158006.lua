-- 基础信息
local base_info = {
	group_id = 220158006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21030601, pos = { x = 290.750, y = 220.570, z = 567.104 }, rot = { x = 0.000, y = 222.292, z = 0.000 }, level = 1, affix = { 1109 }, pose_id = 9012 },
	{ config_id = 6002, monster_id = 21010601, pos = { x = 282.989, y = 219.086, z = 562.710 }, rot = { x = 0.000, y = 122.886, z = 0.000 }, level = 1, affix = { 1109 }, pose_id = 9013 },
	{ config_id = 6003, monster_id = 21010601, pos = { x = 288.362, y = 221.743, z = 556.665 }, rot = { x = 0.000, y = 299.891, z = 0.000 }, level = 1, affix = { 1109 }, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6006, gadget_id = 70220103, pos = { x = 274.618, y = 222.355, z = 600.295 }, rot = { x = 0.000, y = 214.357, z = 0.000 }, level = 1 },
	{ config_id = 6007, gadget_id = 70220103, pos = { x = 250.151, y = 223.686, z = 635.553 }, rot = { x = 0.000, y = 214.357, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6008, shape = RegionShape.SPHERE, radius = 13, pos = { x = 287.597, y = 221.485, z = 555.741 } }
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "ANY_MONSTER_DIE_6004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6004", action = "action_EVENT_ANY_MONSTER_DIE_6004" },
	{ config_id = 1006008, name = "ENTER_REGION_6008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6008", action = "action_EVENT_ENTER_REGION_6008", trigger_count = 0 }
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
		monsters = { 6001, 6002, 6003 },
		gadgets = { },
		regions = { 6008 },
		triggers = { "ANY_MONSTER_DIE_6004", "ENTER_REGION_6008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6006, 6007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220158006, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220158002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6008(context, evt)
	if evt.param1 ~= 6008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220158002, 2)
	
	-- 切换二阶段环境
	    ScriptLib.SetWeatherAreaState(context, 10156, 1)
	
	return 0
end