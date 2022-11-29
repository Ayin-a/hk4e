-- 基础信息
local base_info = {
	group_id = 133108178
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178003, monster_id = 21011201, pos = { x = -83.337, y = 200.000, z = -877.412 }, rot = { x = 0.000, y = 330.492, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 178004, monster_id = 21011201, pos = { x = -85.594, y = 200.000, z = -876.686 }, rot = { x = 0.000, y = 60.080, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 178012, monster_id = 21020301, pos = { x = -89.062, y = 200.000, z = -870.961 }, rot = { x = 0.000, y = 325.425, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 7 },
	{ config_id = 178013, monster_id = 22010201, pos = { x = -85.263, y = 200.000, z = -874.575 }, rot = { x = 0.000, y = 128.936, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 178001, gadget_id = 70350201, pos = { x = -99.174, y = 210.766, z = -864.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 178007, gadget_id = 70220026, pos = { x = -90.636, y = 200.887, z = -879.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 178008, gadget_id = 70220014, pos = { x = -90.113, y = 200.524, z = -877.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 178009, gadget_id = 70300087, pos = { x = -86.749, y = 200.479, z = -881.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 178010, gadget_id = 70360163, pos = { x = -87.256, y = 200.000, z = -873.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 178014, gadget_id = 70220013, pos = { x = -92.401, y = 200.000, z = -873.448 }, rot = { x = 0.000, y = 40.323, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 178002, shape = RegionShape.SPHERE, radius = 40, pos = { x = -87.939, y = 200.000, z = -872.406 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1178002, name = "ENTER_REGION_178002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_178002", trigger_count = 0 },
	{ config_id = 1178011, name = "ANY_MONSTER_DIE_178011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_178011", action = "action_EVENT_ANY_MONSTER_DIE_178011" },
	{ config_id = 1178015, name = "GROUP_LOAD_178015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_178015" }
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
		monsters = { 178003, 178004, 178012, 178013 },
		gadgets = { 178001, 178007, 178008, 178009, 178014 },
		regions = { 178002 },
		triggers = { "ENTER_REGION_178002", "ANY_MONSTER_DIE_178011", "GROUP_LOAD_178015" },
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
function action_EVENT_ENTER_REGION_178002(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_178011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_178011(context, evt)
	-- 将configid为 178010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178015(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 178010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end