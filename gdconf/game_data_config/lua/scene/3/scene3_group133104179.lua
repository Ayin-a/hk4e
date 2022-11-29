-- 基础信息
local base_info = {
	group_id = 133104179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179001, monster_id = 21020301, pos = { x = 652.833, y = 240.152, z = 823.122 }, rot = { x = 0.000, y = 130.628, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 179002, monster_id = 21010502, pos = { x = 693.206, y = 248.808, z = 769.648 }, rot = { x = 0.000, y = 265.368, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 179003, monster_id = 21020201, pos = { x = 704.953, y = 239.322, z = 787.118 }, rot = { x = 0.000, y = 161.453, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 179004, monster_id = 22010101, pos = { x = 675.858, y = 240.037, z = 791.661 }, rot = { x = 0.000, y = 207.722, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 179005, monster_id = 21011201, pos = { x = 685.297, y = 238.930, z = 791.253 }, rot = { x = 0.000, y = 181.836, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 179006, monster_id = 21011201, pos = { x = 676.969, y = 239.732, z = 786.911 }, rot = { x = 0.000, y = 311.453, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 179007, gadget_id = 70300085, pos = { x = 673.548, y = 240.441, z = 789.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179008, gadget_id = 70300087, pos = { x = 673.619, y = 240.902, z = 789.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179009, gadget_id = 70220005, pos = { x = 655.927, y = 246.508, z = 805.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179010, gadget_id = 70220005, pos = { x = 652.719, y = 246.508, z = 803.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179011, gadget_id = 70350201, pos = { x = 654.474, y = 246.508, z = 804.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179012, gadget_id = 70350201, pos = { x = 646.664, y = 240.532, z = 827.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179013, gadget_id = 70350201, pos = { x = 702.225, y = 241.370, z = 813.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179014, gadget_id = 70310009, pos = { x = 705.788, y = 239.270, z = 785.148 }, rot = { x = 0.000, y = 334.654, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 179015, gadget_id = 70360163, pos = { x = 690.045, y = 239.292, z = 800.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 179018, shape = RegionShape.SPHERE, radius = 60, pos = { x = 679.680, y = 239.541, z = 798.801 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1179016, name = "ANY_MONSTER_DIE_179016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_179016", action = "action_EVENT_ANY_MONSTER_DIE_179016" },
	{ config_id = 1179017, name = "GROUP_LOAD_179017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_179017" },
	{ config_id = 1179018, name = "ENTER_REGION_179018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_179018", trigger_count = 0 }
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
		monsters = { 179001, 179002, 179003, 179004, 179005, 179006 },
		gadgets = { 179007, 179008, 179009, 179010, 179011, 179012, 179013, 179014 },
		regions = { 179018 },
		triggers = { "ANY_MONSTER_DIE_179016", "GROUP_LOAD_179017", "ENTER_REGION_179018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_179016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_179016(context, evt)
	-- 将configid为 179015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_179017(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 179015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_179018(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end