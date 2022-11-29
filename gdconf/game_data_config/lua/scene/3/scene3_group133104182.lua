-- 基础信息
local base_info = {
	group_id = 133104182
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 182001, monster_id = 21020301, pos = { x = 813.434, y = 224.604, z = 737.634 }, rot = { x = 0.000, y = 176.509, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 182002, monster_id = 21020201, pos = { x = 844.782, y = 226.339, z = 730.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 182003, monster_id = 21010502, pos = { x = 818.823, y = 224.935, z = 740.728 }, rot = { x = 0.000, y = 284.611, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 182004, monster_id = 21011002, pos = { x = 838.050, y = 224.442, z = 722.674 }, rot = { x = 0.000, y = 241.505, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 182005, gadget_id = 70350201, pos = { x = 834.020, y = 227.110, z = 756.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 182007, gadget_id = 70360163, pos = { x = 832.259, y = 227.022, z = 736.638 }, rot = { x = 0.000, y = 16.267, z = 0.000 }, level = 19, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 182009, shape = RegionShape.SPHERE, radius = 45, pos = { x = 825.427, y = 226.749, z = 736.812 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1182006, name = "ANY_MONSTER_DIE_182006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_182006", action = "action_EVENT_ANY_MONSTER_DIE_182006" },
	{ config_id = 1182008, name = "GROUP_LOAD_182008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_182008" },
	{ config_id = 1182009, name = "ENTER_REGION_182009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_182009", trigger_count = 0 }
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
		monsters = { 182001, 182002, 182003, 182004 },
		gadgets = { 182005 },
		regions = { 182009 },
		triggers = { "ANY_MONSTER_DIE_182006", "GROUP_LOAD_182008", "ENTER_REGION_182009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_182006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_182006(context, evt)
	-- 将configid为 182007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182008(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 182007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_182009(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end