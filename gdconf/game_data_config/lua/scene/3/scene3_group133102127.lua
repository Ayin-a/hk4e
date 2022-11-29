-- 基础信息
local base_info = {
	group_id = 133102127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127004, monster_id = 21020301, pos = { x = 1422.404, y = 200.000, z = 750.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 5 },
	{ config_id = 127005, monster_id = 20010801, pos = { x = 1397.190, y = 200.000, z = 727.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 127006, monster_id = 20010801, pos = { x = 1402.102, y = 200.000, z = 727.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 127007, monster_id = 21010201, pos = { x = 1402.416, y = 200.000, z = 739.315 }, rot = { x = 0.000, y = 116.016, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 5 },
	{ config_id = 127008, monster_id = 21011002, pos = { x = 1407.012, y = 200.000, z = 737.665 }, rot = { x = 0.000, y = 306.165, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127001, gadget_id = 70360163, pos = { x = 1404.603, y = 200.000, z = 738.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 127002, gadget_id = 70350201, pos = { x = 1407.493, y = 200.863, z = 757.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 127003, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1405.496, y = 200.007, z = 743.080 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1127003, name = "ENTER_REGION_127003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_127003", trigger_count = 0 },
	{ config_id = 1127009, name = "ANY_MONSTER_DIE_127009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127009", action = "action_EVENT_ANY_MONSTER_DIE_127009" },
	{ config_id = 1127010, name = "GROUP_LOAD_127010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_127010" }
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
		monsters = { 127004, 127005, 127006, 127007, 127008 },
		gadgets = { 127002 },
		regions = { 127003 },
		triggers = { "ENTER_REGION_127003", "ANY_MONSTER_DIE_127009", "GROUP_LOAD_127010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_127003(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127009(context, evt)
	-- 将configid为 127001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127010(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 127001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end