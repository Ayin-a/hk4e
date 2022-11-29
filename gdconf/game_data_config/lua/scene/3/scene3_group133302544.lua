-- 基础信息
local base_info = {
	group_id = 133302544
}

-- Trigger变量
local defs = {
	gadget_id = 544003,
	true_array = {544001,544002,544011}
}

-- DEFS_MISCS
function LF_IsInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return true;
        end
    end
    return false;
end

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
	{ config_id = 544001, gadget_id = 70310200, pos = { x = -610.941, y = 225.805, z = 2943.885 }, rot = { x = 0.000, y = 285.872, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544002, gadget_id = 70310200, pos = { x = -637.841, y = 219.819, z = 2932.558 }, rot = { x = 0.000, y = 354.258, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544003, gadget_id = 70211101, pos = { x = -618.516, y = 222.441, z = 2941.164 }, rot = { x = 9.377, y = 328.784, z = 1.978 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 544004, gadget_id = 70310200, pos = { x = -588.813, y = 230.843, z = 2953.140 }, rot = { x = 0.000, y = 26.522, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544005, gadget_id = 70310198, pos = { x = -595.445, y = 229.836, z = 2955.531 }, rot = { x = 357.954, y = 192.613, z = 5.030 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544006, gadget_id = 70310200, pos = { x = -611.535, y = 223.742, z = 2956.908 }, rot = { x = 0.000, y = 341.594, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544007, gadget_id = 70310200, pos = { x = -628.851, y = 219.215, z = 2962.577 }, rot = { x = 0.000, y = 317.432, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544011, gadget_id = 70310200, pos = { x = -643.504, y = 219.355, z = 2952.482 }, rot = { x = 0.000, y = 292.435, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544012, gadget_id = 70310200, pos = { x = -641.018, y = 222.394, z = 2941.298 }, rot = { x = 0.000, y = 79.731, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 544013, gadget_id = 70310200, pos = { x = -614.758, y = 227.519, z = 2932.687 }, rot = { x = 0.000, y = 21.584, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1544008, name = "GADGET_STATE_CHANGE_544008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_544008", action = "action_EVENT_GADGET_STATE_CHANGE_544008", trigger_count = 0 },
	-- 正确的被激活
	{ config_id = 1544009, name = "GADGET_STATE_CHANGE_544009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_544009", action = "action_EVENT_GADGET_STATE_CHANGE_544009", trigger_count = 0 },
	-- 错误的被激活
	{ config_id = 1544010, name = "GADGET_STATE_CHANGE_544010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_544010", action = "action_EVENT_GADGET_STATE_CHANGE_544010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false }
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
	end_suite = 3,
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
			{ config_id = 544004, state = 0 },
			{ config_id = 544005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_544008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 544001, state = 0 },
			{ config_id = 544002, state = 0 },
			{ config_id = 544006, state = 0 },
			{ config_id = 544007, state = 0 },
			{ config_id = 544011, state = 0 },
			{ config_id = 544012, state = 0 },
			{ config_id = 544013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_544009", "GADGET_STATE_CHANGE_544010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 544001, state = 201 },
			{ config_id = 544002, state = 201 },
			{ config_id = 544003, state = 0 },
			{ config_id = 544005, state = 0 },
			{ config_id = 544011, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_544008(context, evt)
	if 544004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_544008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302544, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 触发镜头注目，注目位置为坐标{x=-618.5162, y=222.4406, z=2941.164}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-618.5162, y=222.4406, z=2941.164}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_544009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		return false
	end
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return true
	else
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_544009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		
	ScriptLib.MarkPlayerAction(context, 30004, 3, 1) 
		ScriptLib.GoToFlowSuite(context, 133302544, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_544010(context, evt)
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return false
	else
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_544010(context, evt)
	--[[
	for i=1,#suite_disk[2].gadgets do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suite_disk[2].gadgets[i].config_id, 0)
	end
	--]]
	
	ScriptLib.SetGroupVariableValue(context,"start",0)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302544, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133302544, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end