-- 基础信息
local base_info = {
	group_id = 133304525
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 525001, gadget_id = 70290472, pos = { x = -1052.470, y = 257.313, z = 2068.536 }, rot = { x = 335.210, y = 255.619, z = 4.472 }, level = 30, area_id = 24 },
	{ config_id = 525002, gadget_id = 70290472, pos = { x = -1061.784, y = 262.861, z = 2056.594 }, rot = { x = 333.360, y = 259.644, z = 6.297 }, level = 30, area_id = 24 },
	{ config_id = 525003, gadget_id = 70290472, pos = { x = -1070.105, y = 268.550, z = 2065.874 }, rot = { x = 333.730, y = 257.541, z = 15.109 }, level = 30, area_id = 24 },
	{ config_id = 525004, gadget_id = 70290472, pos = { x = -1062.980, y = 262.841, z = 2081.690 }, rot = { x = 327.225, y = 271.101, z = 7.640 }, level = 30, area_id = 24 },
	{ config_id = 525005, gadget_id = 70290472, pos = { x = -1064.081, y = 263.696, z = 2073.740 }, rot = { x = 330.575, y = 282.603, z = 346.756 }, level = 30, area_id = 24 },
	{ config_id = 525006, gadget_id = 70290472, pos = { x = -1077.661, y = 273.766, z = 2078.945 }, rot = { x = 323.320, y = 252.650, z = 19.662 }, level = 30, area_id = 21 },
	{ config_id = 525007, gadget_id = 70290472, pos = { x = -1075.721, y = 269.244, z = 2054.807 }, rot = { x = 336.475, y = 275.702, z = 5.945 }, level = 30, area_id = 24 },
	{ config_id = 525008, gadget_id = 70290472, pos = { x = -1085.777, y = 274.550, z = 2063.533 }, rot = { x = 335.521, y = 277.904, z = 359.172 }, level = 30, area_id = 21 },
	{ config_id = 525009, gadget_id = 70290472, pos = { x = -1086.474, y = 272.265, z = 2047.503 }, rot = { x = 348.375, y = 4.284, z = 339.020 }, level = 30, area_id = 21 },
	{ config_id = 525010, gadget_id = 70290472, pos = { x = -1073.140, y = 266.841, z = 2041.137 }, rot = { x = 357.168, y = 2.072, z = 340.151 }, level = 30, area_id = 24 },
	{ config_id = 525011, gadget_id = 70290472, pos = { x = -1080.496, y = 272.235, z = 2063.276 }, rot = { x = 356.748, y = 0.801, z = 337.881 }, level = 30, area_id = 21 },
	{ config_id = 525012, gadget_id = 70290472, pos = { x = -1087.088, y = 271.295, z = 2033.847 }, rot = { x = 5.616, y = 5.301, z = 339.125 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1525013, name = "ANY_GADGET_DIE_525013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_525013", action = "action_EVENT_ANY_GADGET_DIE_525013", trigger_count = 0 },
	{ config_id = 1525014, name = "ANY_GADGET_DIE_525014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_525014", action = "action_EVENT_ANY_GADGET_DIE_525014", trigger_count = 0 },
	{ config_id = 1525015, name = "ANY_GADGET_DIE_525015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_525015", action = "action_EVENT_ANY_GADGET_DIE_525015", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 4,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 525001, state = 0 },
			{ config_id = 525002, state = 0 },
			{ config_id = 525003, state = 0 },
			{ config_id = 525004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_525013" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 525005, state = 0 },
			{ config_id = 525006, state = 0 },
			{ config_id = 525007, state = 0 },
			{ config_id = 525008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_525014" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 525009, state = 0 },
			{ config_id = 525010, state = 0 },
			{ config_id = 525011, state = 0 },
			{ config_id = 525012, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_525015" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_525013(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304525}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_525013(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304525, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_525014(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304525}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_525014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304525, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_525015(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304525}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_525015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304526, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304525, 4)
	
	-- 触发镜头注目，注目位置为坐标{x=-1092.277, y=274.196, z=2029.624}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1092.277, y=274.196, z=2029.624}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end