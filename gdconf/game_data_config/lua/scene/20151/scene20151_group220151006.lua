-- 基础信息
local base_info = {
	group_id = 220151006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 26120301, pos = { x = -84.208, y = -36.969, z = 70.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 6002, monster_id = 26120101, pos = { x = -84.125, y = -36.905, z = 76.535 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 6005, monster_id = 26090101, pos = { x = -86.442, y = -36.948, z = 73.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 6006, monster_id = 26090201, pos = { x = -82.358, y = -36.948, z = 73.864 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6003, gadget_id = 70211012, pos = { x = -84.240, y = -36.948, z = 73.716 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 6007, gadget_id = 70900201, pos = { x = -118.360, y = -44.269, z = 49.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70290196, pos = { x = -112.714, y = -45.283, z = 31.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6008, shape = RegionShape.SPHERE, radius = 4, pos = { x = -119.557, y = -44.269, z = 49.639 } }
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "ANY_MONSTER_DIE_6004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6004", action = "action_EVENT_ANY_MONSTER_DIE_6004" },
	{ config_id = 1006008, name = "ENTER_REGION_6008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6008", action = "action_EVENT_ENTER_REGION_6008" }
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
		monsters = { 6001, 6002, 6005, 6006 },
		gadgets = { 6003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6007, 6009 },
		regions = { 6008 },
		triggers = { "ENTER_REGION_6008" },
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
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220151006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220151006, 2)
	
	-- 将configid为 6003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
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
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end