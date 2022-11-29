-- 基础信息
local base_info = {
	group_id = 133303345
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 345001, monster_id = 24030101, pos = { x = -1833.014, y = 322.121, z = 3678.215 }, rot = { x = 0.000, y = 117.033, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 },
	{ config_id = 345017, monster_id = 21020101, pos = { x = -1833.893, y = 322.353, z = 3696.512 }, rot = { x = 0.000, y = 139.244, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 345018, monster_id = 21010101, pos = { x = -1825.260, y = 327.564, z = 3651.033 }, rot = { x = 0.000, y = 173.670, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 345019, monster_id = 21010101, pos = { x = -1828.212, y = 327.595, z = 3649.815 }, rot = { x = 0.000, y = 104.535, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 345023, monster_id = 21010101, pos = { x = -1830.545, y = 322.349, z = 3675.257 }, rot = { x = 0.000, y = 314.555, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 345024, monster_id = 21010101, pos = { x = -1830.463, y = 322.257, z = 3680.145 }, rot = { x = 0.000, y = 233.212, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 345026, monster_id = 20011301, pos = { x = -1826.102, y = 327.438, z = 3649.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 23 },
	{ config_id = 345027, monster_id = 20011201, pos = { x = -1832.255, y = 321.904, z = 3697.203 }, rot = { x = 0.000, y = 152.131, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 345002, gadget_id = 70290421, pos = { x = -1832.893, y = 325.486, z = 3678.133 }, rot = { x = 0.000, y = 7.987, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 23 },
	{ config_id = 345003, gadget_id = 70290422, pos = { x = -1797.587, y = 360.926, z = 3704.401 }, rot = { x = 337.714, y = 74.605, z = 341.917 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
	{ config_id = 345004, gadget_id = 70290422, pos = { x = -1830.986, y = 322.082, z = 3699.190 }, rot = { x = 355.961, y = 8.462, z = 346.252 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 23 },
	{ config_id = 345005, gadget_id = 70290422, pos = { x = -1826.017, y = 326.975, z = 3647.985 }, rot = { x = 355.626, y = 343.150, z = 350.137 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 23 },
	{ config_id = 345006, gadget_id = 70950145, pos = { x = -1834.318, y = 322.110, z = 3678.276 }, rot = { x = 0.000, y = 348.930, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 345007, gadget_id = 70211011, pos = { x = -1831.918, y = 322.166, z = 3678.258 }, rot = { x = 347.874, y = 88.025, z = 6.518 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	-- 26
	{ config_id = 345013, gadget_id = 70330219, pos = { x = -1825.829, y = 327.168, z = 3647.884 }, rot = { x = 355.626, y = 343.150, z = 350.137 }, level = 30, persistent = true, area_id = 23 },
	-- 27
	{ config_id = 345014, gadget_id = 70330219, pos = { x = -1831.226, y = 321.835, z = 3698.991 }, rot = { x = 0.000, y = 182.569, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 345020, gadget_id = 70300089, pos = { x = -1828.479, y = 327.626, z = 3648.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 345021, gadget_id = 70220005, pos = { x = -1823.663, y = 327.469, z = 3650.681 }, rot = { x = 0.000, y = 59.043, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 345022, gadget_id = 70220005, pos = { x = -1824.246, y = 327.480, z = 3651.311 }, rot = { x = 79.735, y = 156.132, z = 329.170 }, level = 30, area_id = 23 },
	{ config_id = 345025, gadget_id = 70310198, pos = { x = -1823.920, y = 323.076, z = 3669.742 }, rot = { x = 2.663, y = 324.185, z = 351.524 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	-- 保底怪物入战，销毁封印环
	{ config_id = 345011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1831.185, y = 322.204, z = 3679.370 }, area_id = 23, vision_type_list = { 33030011 } }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1345008, name = "GADGET_STATE_CHANGE_345008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_345008", action = "action_EVENT_GADGET_STATE_CHANGE_345008" },
	{ config_id = 1345009, name = "TIME_AXIS_PASS_345009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_345009", action = "action_EVENT_TIME_AXIS_PASS_345009" },
	{ config_id = 1345010, name = "TIME_AXIS_PASS_345010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_345010", action = "action_EVENT_TIME_AXIS_PASS_345010" },
	-- 保底怪物入战，销毁封印环
	{ config_id = 1345011, name = "ENTER_REGION_345011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_345011", action = "action_EVENT_ENTER_REGION_345011", trigger_count = 0 },
	{ config_id = 1345012, name = "ANY_MONSTER_DIE_345012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_345012", action = "action_EVENT_ANY_MONSTER_DIE_345012" },
	{ config_id = 1345030, name = "ANY_GADGET_DIE_345030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_345030", action = "action_EVENT_ANY_GADGET_DIE_345030" },
	{ config_id = 1345031, name = "ANY_GADGET_DIE_345031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_345031", action = "action_EVENT_ANY_GADGET_DIE_345031" },
	-- 保底任务通知
	{ config_id = 1345033, name = "GROUP_LOAD_345033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_345033", action = "action_EVENT_GROUP_LOAD_345033", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1345034, name = "GADGET_STATE_CHANGE_345034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_345034", action = "action_EVENT_GADGET_STATE_CHANGE_345034" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 345028, monster_id = 20011201, pos = { x = -1794.825, y = 360.790, z = 3700.592 }, rot = { x = 0.000, y = 264.876, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 },
		{ config_id = 345029, monster_id = 20011201, pos = { x = -1793.707, y = 360.927, z = 3701.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 }
	},
	gadgets = {
		{ config_id = 345015, gadget_id = 70330219, pos = { x = -1792.595, y = 359.422, z = 3698.243 }, rot = { x = 356.741, y = 263.227, z = 11.008 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 345016, gadget_id = 70310004, pos = { x = -1830.974, y = 317.471, z = 3695.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 345035, gadget_id = 70310198, pos = { x = -1796.579, y = 364.785, z = 3717.555 }, rot = { x = 0.000, y = 194.098, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1345032, name = "ANY_GADGET_DIE_345032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_345032", action = "action_EVENT_ANY_GADGET_DIE_345032" }
	}
}

-- 视野组
sight_groups = {
	{ 345001, 345002, 345003, 345004, 345005 }
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
		monsters = { 345001, 345017, 345018, 345019, 345023, 345024 },
		gadgets = { 345002, 345003, 345004, 345005, 345006, 345013, 345014, 345020, 345021, 345022, 345025 },
		regions = { 345011 },
		triggers = { "GADGET_STATE_CHANGE_345008", "TIME_AXIS_PASS_345009", "TIME_AXIS_PASS_345010", "ENTER_REGION_345011", "ANY_MONSTER_DIE_345012", "ANY_GADGET_DIE_345030", "ANY_GADGET_DIE_345031", "GROUP_LOAD_345033", "GADGET_STATE_CHANGE_345034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 345003, 345004, 345005, 345007 },
		regions = { },
		triggers = { "GROUP_LOAD_345033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_345008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303345, 345003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303345, 345004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303345, 345005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_345008(context, evt)
	-- 将configid为 345002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"delay"，时间节点为{2,3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {2,3}, false)
	
	
	-- 将本组内变量名为 "alldead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alldead", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_345009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_345009(context, evt)
	-- 通知groupid为133303345中,configid为：345001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 345001, 133303345) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_345010(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_345010(context, evt)
	-- 将configid为 345002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1832.893, y=325.4861, z=3678.133}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1832.893, y=325.4861, z=3678.133}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_345011(context, evt)
	if evt.param1 ~= 345011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133303345) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_345011(context, evt)
	-- 通知groupid为133303345中,configid为：345001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 345001, 133303345) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 345002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 345002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_345012(context, evt)
	--判断死亡怪物的configid是否为 345001
	if evt.param1 ~= 345001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_345012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303345, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307715_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questfin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_345030(context, evt)
	if 345013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_345030(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 345026, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_345031(context, evt)
	if 345014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_345031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 345027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_345033(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133303345) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_345033(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307715_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_345034(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303345, 345003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303345, 345004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303345, 345005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_345034(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end