-- 基础信息
local base_info = {
	group_id = 133103005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5004, monster_id = 21011002, pos = { x = 513.727, y = 289.839, z = 1490.402 }, rot = { x = 0.000, y = 86.613, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 5005, monster_id = 21020301, pos = { x = 523.391, y = 289.354, z = 1486.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 5006, monster_id = 21010502, pos = { x = 515.814, y = 289.653, z = 1488.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 5007, monster_id = 21010502, pos = { x = 515.826, y = 289.388, z = 1492.504 }, rot = { x = 0.000, y = 179.521, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70350201, pos = { x = 498.134, y = 292.929, z = 1501.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 5002, gadget_id = 70360163, pos = { x = 515.761, y = 289.542, z = 1490.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 5009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 511.351, y = 290.060, z = 1488.878 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "ANY_MONSTER_DIE_5003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5003", action = "action_EVENT_ANY_MONSTER_DIE_5003" },
	{ config_id = 1005008, name = "GROUP_LOAD_5008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5008" },
	{ config_id = 1005009, name = "ENTER_REGION_5009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5009", trigger_count = 0 }
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
		monsters = { 5004, 5005, 5006, 5007 },
		gadgets = { 5001 },
		regions = { 5009 },
		triggers = { "ANY_MONSTER_DIE_5003", "GROUP_LOAD_5008", "ENTER_REGION_5009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5008(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 5002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_5009(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end