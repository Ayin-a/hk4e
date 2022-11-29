-- 基础信息
local base_info = {
	group_id = 220131009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21020501, pos = { x = 46.931, y = -6.460, z = -22.594 }, rot = { x = 0.000, y = 267.799, z = 0.000 }, level = 1, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9002, gadget_id = 70350004, pos = { x = 26.019, y = -5.757, z = -20.590 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9004, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 20.000 }, pos = { x = 61.465, y = -2.278, z = -0.919 } }
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "ANY_MONSTER_DIE_9003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9003", action = "action_EVENT_ANY_MONSTER_DIE_9003" },
	{ config_id = 1009004, name = "ENTER_REGION_9004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9004", action = "action_EVENT_ENTER_REGION_9004" }
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
		gadgets = { 9002 },
		regions = { 9004 },
		triggers = { "ANY_MONSTER_DIE_9003", "ENTER_REGION_9004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9001 },
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
function condition_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Stage" 的变量设置为 7
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Stage", 7, 220131016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9004(context, evt)
	if evt.param1 ~= 9004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131009, 2)
	
	return 0
end