-- 基础信息
local base_info = {
	group_id = 133301063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 25010201, pos = { x = -857.018, y = 217.996, z = 3244.833 }, rot = { x = 0.000, y = 88.619, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 23 },
	{ config_id = 63005, monster_id = 25010201, pos = { x = -856.227, y = 217.892, z = 3243.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 23 },
	{ config_id = 63006, monster_id = 25010201, pos = { x = -853.653, y = 217.633, z = 3248.436 }, rot = { x = 0.000, y = 153.748, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63002, gadget_id = 70211012, pos = { x = -870.001, y = 225.734, z = 3256.974 }, rot = { x = 0.134, y = 95.662, z = 359.617 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 63007, gadget_id = 70310009, pos = { x = -855.216, y = 217.722, z = 3244.964 }, rot = { x = 0.000, y = 67.371, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 63008, gadget_id = 70310001, pos = { x = -858.025, y = 218.856, z = 3261.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 63009, gadget_id = 70310001, pos = { x = -794.774, y = 231.714, z = 3259.609 }, rot = { x = 1.929, y = 6.725, z = 18.034 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 63010, gadget_id = 70310001, pos = { x = -809.499, y = 226.487, z = 3266.846 }, rot = { x = 1.929, y = 6.725, z = 18.034 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 63011, shape = RegionShape.SPHERE, radius = 60, pos = { x = -852.027, y = 217.266, z = 3245.635 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1063003, name = "ANY_MONSTER_DIE_63003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63003", action = "action_EVENT_ANY_MONSTER_DIE_63003" },
	{ config_id = 1063011, name = "ENTER_REGION_63011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63011", action = "action_EVENT_ENTER_REGION_63011", trigger_count = 0 }
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
	end_suite = 2,
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
		regions = { 63011 },
		triggers = { "ANY_MONSTER_DIE_63003", "ENTER_REGION_63011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 63001, 63005, 63006 },
		gadgets = { 63002, 63007, 63008, 63009, 63010 },
		regions = { 63011 },
		triggers = { "ANY_MONSTER_DIE_63003", "ENTER_REGION_63011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 将configid为 63002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_63011(context, evt)
	if evt.param1 ~= 63011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301063, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end