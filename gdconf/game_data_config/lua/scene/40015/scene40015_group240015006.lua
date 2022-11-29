-- 基础信息
local base_info = {
	group_id = 240015006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25010301, pos = { x = -118.916, y = 47.058, z = 152.927 }, rot = { x = 0.000, y = 30.788, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6002, monster_id = 25010501, pos = { x = -120.495, y = 47.043, z = 154.986 }, rot = { x = 0.000, y = 115.949, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6009, monster_id = 25010501, pos = { x = -116.729, y = 47.041, z = 153.354 }, rot = { x = 0.000, y = 297.860, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6003, gadget_id = 70690008, pos = { x = -125.545, y = 44.391, z = 147.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70360002, pos = { x = -122.409, y = 47.044, z = 157.429 }, rot = { x = 0.000, y = 104.789, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	{ config_id = 6008, shape = RegionShape.SPHERE, radius = 7, pos = { x = -125.387, y = 68.397, z = 148.130 } }
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "ANY_MONSTER_DIE_6006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6006", action = "action_EVENT_ANY_MONSTER_DIE_6006" },
	{ config_id = 1006007, name = "SELECT_OPTION_6007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6007", action = "action_EVENT_SELECT_OPTION_6007" },
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
		monsters = { 6001, 6002, 6009 },
		gadgets = { 6004 },
		regions = { 6008 },
		triggers = { "ANY_MONSTER_DIE_6006", "SELECT_OPTION_6007", "ENTER_REGION_6008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6003 },
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
function condition_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	-- 将configid为 6004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240015006, 6004, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6007(context, evt)
	-- 判断是gadgetid 6004 option_id 2
	if 6004 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6007(context, evt)
	-- 删除指定group： 240015006 ；指定config：6004；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240015006, 6004, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015006, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015011, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240015011, 3)
	
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
	-- 触发镜头注目，注目位置为坐标（-91，63，148），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-91, y=63, z=148}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end