-- 基础信息
local base_info = {
	group_id = 133108177
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177003, monster_id = 21020202, pos = { x = -193.161, y = 200.191, z = -1002.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 7 },
	{ config_id = 177004, monster_id = 22010101, pos = { x = -211.067, y = 200.363, z = -1005.826 }, rot = { x = 0.000, y = 339.212, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 7 },
	{ config_id = 177005, monster_id = 21010902, pos = { x = -168.164, y = 200.399, z = -1004.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 177006, monster_id = 21010902, pos = { x = -170.118, y = 200.516, z = -1003.813 }, rot = { x = 0.000, y = 53.482, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 177007, monster_id = 21030401, pos = { x = -166.505, y = 200.000, z = -1003.004 }, rot = { x = 0.000, y = 271.068, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 177001, gadget_id = 70350201, pos = { x = -179.282, y = 200.052, z = -978.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177002, gadget_id = 70350201, pos = { x = -187.178, y = 201.783, z = -1020.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177009, gadget_id = 70300089, pos = { x = -177.732, y = 200.060, z = -980.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177010, gadget_id = 70300089, pos = { x = -177.979, y = 200.003, z = -977.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177011, gadget_id = 70300089, pos = { x = -181.563, y = 200.061, z = -979.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177012, gadget_id = 70360163, pos = { x = -166.696, y = 200.000, z = -1003.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 177014, gadget_id = 70300089, pos = { x = -166.486, y = 200.208, z = -1004.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177016, gadget_id = 70300089, pos = { x = -169.901, y = 200.805, z = -1005.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177017, gadget_id = 70300089, pos = { x = -168.257, y = 200.000, z = -1000.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 177008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -190.292, y = 200.584, z = -996.681 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1177008, name = "ENTER_REGION_177008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_177008", trigger_count = 0 },
	{ config_id = 1177013, name = "ANY_MONSTER_DIE_177013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_177013", action = "action_EVENT_ANY_MONSTER_DIE_177013" },
	{ config_id = 1177015, name = "GROUP_LOAD_177015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_177015" }
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
		monsters = { 177003, 177004, 177005, 177006, 177007 },
		gadgets = { 177001, 177002, 177009, 177010, 177011, 177014, 177016, 177017 },
		regions = { 177008 },
		triggers = { "ENTER_REGION_177008", "ANY_MONSTER_DIE_177013", "GROUP_LOAD_177015" },
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

-- 触发操作
function action_EVENT_ENTER_REGION_177008(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_177013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_177013(context, evt)
	-- 将configid为 177012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177015(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 177012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end