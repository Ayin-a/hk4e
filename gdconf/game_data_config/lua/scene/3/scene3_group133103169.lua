-- 基础信息
local base_info = {
	group_id = 133103169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169004, monster_id = 21020301, pos = { x = 576.588, y = 245.578, z = 1522.205 }, rot = { x = 0.000, y = 32.988, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 169007, monster_id = 21010501, pos = { x = 587.160, y = 246.113, z = 1553.371 }, rot = { x = 0.000, y = 128.225, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 169008, monster_id = 21010501, pos = { x = 601.004, y = 246.113, z = 1542.881 }, rot = { x = 0.000, y = 297.836, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 169014, monster_id = 21010901, pos = { x = 579.575, y = 245.590, z = 1520.583 }, rot = { x = 0.000, y = 351.646, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 169015, monster_id = 21011201, pos = { x = 590.745, y = 239.384, z = 1521.784 }, rot = { x = 0.000, y = 170.194, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 169016, monster_id = 21020201, pos = { x = 596.044, y = 238.669, z = 1551.736 }, rot = { x = 0.000, y = 34.984, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 169018, monster_id = 21011001, pos = { x = 573.509, y = 245.578, z = 1524.055 }, rot = { x = 0.000, y = 72.139, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169001, gadget_id = 70211001, pos = { x = 575.773, y = 245.578, z = 1516.684 }, rot = { x = 0.000, y = 32.179, z = 0.000 }, level = 21, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 169002, gadget_id = 70211022, pos = { x = 574.015, y = 245.590, z = 1517.790 }, rot = { x = 0.000, y = 32.179, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 169009, gadget_id = 70310009, pos = { x = 591.407, y = 239.498, z = 1520.924 }, rot = { x = 0.000, y = 316.316, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 169019, gadget_id = 70211001, pos = { x = 572.137, y = 245.578, z = 1518.972 }, rot = { x = 0.000, y = 32.179, z = 0.000 }, level = 21, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 169005, shape = RegionShape.SPHERE, radius = 6, pos = { x = 576.767, y = 245.590, z = 1522.570 }, area_id = 6 },
	{ config_id = 169006, shape = RegionShape.SPHERE, radius = 15, pos = { x = 591.842, y = 238.632, z = 1544.537 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1169003, name = "ANY_MONSTER_DIE_169003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169003", action = "action_EVENT_ANY_MONSTER_DIE_169003" },
	{ config_id = 1169005, name = "ENTER_REGION_169005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169005", action = "action_EVENT_ENTER_REGION_169005" },
	{ config_id = 1169006, name = "ENTER_REGION_169006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169006", action = "action_EVENT_ENTER_REGION_169006" },
	{ config_id = 1169011, name = "GADGET_STATE_CHANGE_169011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_169011", action = "action_EVENT_GADGET_STATE_CHANGE_169011" }
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
		-- description = suite_1,
		monsters = { 169004, 169016 },
		gadgets = { 169002, 169009 },
		regions = { 169005, 169006 },
		triggers = { "ANY_MONSTER_DIE_169003", "ENTER_REGION_169005", "ENTER_REGION_169006", "GADGET_STATE_CHANGE_169011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 169014, 169018 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 169007, 169008, 169015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 169001, 169019 },
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
function condition_EVENT_ANY_MONSTER_DIE_169003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169003(context, evt)
	-- 将configid为 169002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_169005(context, evt)
	if evt.param1 ~= 169005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103169, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_169006(context, evt)
	if evt.param1 ~= 169006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103169, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_169011(context, evt)
	if 169002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_169011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103169, 4)
	
	return 0
end