-- 基础信息
local base_info = {
	group_id = 199003005
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
	{ config_id = 5002, npc_id = 20610, pos = { x = -770.150, y = 99.883, z = 437.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 5004, npc_id = 20616, pos = { x = -741.214, y = 101.247, z = 431.660 }, rot = { x = 0.000, y = 172.225, z = 0.000 }, area_id = 403 },
	{ config_id = 5016, npc_id = 20854, pos = { x = -741.214, y = 101.247, z = 431.660 }, rot = { x = 0.000, y = 172.225, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70710136, pos = { x = -770.200, y = 99.850, z = 437.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 5003, gadget_id = 70230100, pos = { x = -740.993, y = 100.936, z = 431.071 }, rot = { x = 0.000, y = 220.205, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 5005, gadget_id = 70350004, pos = { x = -748.146, y = 99.360, z = 430.516 }, rot = { x = 87.998, y = 249.746, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 5011, gadget_id = 70310011, pos = { x = -767.532, y = 98.890, z = 440.542 }, rot = { x = 310.355, y = 0.000, z = 348.906 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 5012, gadget_id = 70310011, pos = { x = -774.134, y = 100.477, z = 434.363 }, rot = { x = 273.725, y = 69.878, z = 205.074 }, level = 20, area_id = 403 },
	{ config_id = 5013, gadget_id = 70310011, pos = { x = -760.038, y = 99.629, z = 423.192 }, rot = { x = 283.123, y = 102.874, z = 92.263 }, level = 20, area_id = 403 },
	{ config_id = 5014, gadget_id = 70310011, pos = { x = -758.200, y = 99.575, z = 441.697 }, rot = { x = 4.337, y = 106.455, z = 278.306 }, level = 20, area_id = 403 },
	{ config_id = 5015, gadget_id = 70230100, pos = { x = -741.062, y = 100.765, z = 431.054 }, rot = { x = 0.000, y = 220.205, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005006, name = "QUEST_START_5006", event = EventType.EVENT_QUEST_START, source = "7901310", condition = "", action = "action_EVENT_QUEST_START_5006", trigger_count = 0 },
	{ config_id = 1005007, name = "QUEST_START_5007", event = EventType.EVENT_QUEST_START, source = "7901317", condition = "", action = "action_EVENT_QUEST_START_5007", trigger_count = 0 },
	-- 判断07已完成
	{ config_id = 1005008, name = "GROUP_LOAD_5008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5008", trigger_count = 0 },
	-- 判断15已完成
	{ config_id = 1005009, name = "GROUP_LOAD_5009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5009", trigger_count = 0 },
	{ config_id = 1005010, name = "QUEST_START_5010", event = EventType.EVENT_QUEST_START, source = "7901311", condition = "", action = "action_EVENT_QUEST_START_5010", trigger_count = 0 },
	{ config_id = 1005017, name = "GADGET_STATE_CHANGE_5017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5017", action = "action_EVENT_GADGET_STATE_CHANGE_5017", trigger_count = 0 },
	{ config_id = 1005018, name = "GADGET_STATE_CHANGE_5018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5018", action = "action_EVENT_GADGET_STATE_CHANGE_5018", trigger_count = 0 },
	{ config_id = 1005019, name = "GADGET_STATE_CHANGE_5019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5019", action = "action_EVENT_GADGET_STATE_CHANGE_5019", trigger_count = 0 },
	{ config_id = 1005020, name = "GADGET_STATE_CHANGE_5020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5020", action = "action_EVENT_GADGET_STATE_CHANGE_5020", trigger_count = 0 }
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
	suite = 4,
	end_suite = 3,
	rand_suite = false,
	father_quest = 79013,
	quest_config = {
		[7901307] = {
			{
				state = 2,
				suite = 1
			}
		},
		[7901310] = {
			{
				state = 2,
				suite = 2
			},
			{
				state = 3,
				suite = 2
			}
		},
		[7901315] = {
			{
				state = 3,
				suite = 3
			}
		},
		[7901301] = {
			{
				state = 2,
				suite = 4
			}
		}
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 5005, state = 0 },
			{ config_id = 5011, state = 201 },
			{ config_id = 5012, state = 0 },
			{ config_id = 5013, state = 0 },
			{ config_id = 5014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_5006", "GROUP_LOAD_5008", "QUEST_START_5010", "GADGET_STATE_CHANGE_5017", "GADGET_STATE_CHANGE_5018", "GADGET_STATE_CHANGE_5019", "GADGET_STATE_CHANGE_5020" },
		npcs = { 5002 },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 5001, state = 0 },
			{ config_id = 5011, state = 201 },
			{ config_id = 5012, state = 0 },
			{ config_id = 5013, state = 0 },
			{ config_id = 5014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_5007", "GROUP_LOAD_5009", "QUEST_START_5010", "GADGET_STATE_CHANGE_5017", "GADGET_STATE_CHANGE_5018", "GADGET_STATE_CHANGE_5019", "GADGET_STATE_CHANGE_5020" },
		npcs = { 5002 },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 5003, state = 201 },
			{ config_id = 5011, state = 201 },
			{ config_id = 5012, state = 0 },
			{ config_id = 5013, state = 0 },
			{ config_id = 5014, state = 0 },
			{ config_id = 5015, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_5010", "GADGET_STATE_CHANGE_5017", "GADGET_STATE_CHANGE_5018", "GADGET_STATE_CHANGE_5019", "GADGET_STATE_CHANGE_5020" },
		npcs = { 5002, 5004, 5016 },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 5005, state = 0 },
			{ config_id = 5011, state = 201 },
			{ config_id = 5012, state = 0 },
			{ config_id = 5013, state = 0 },
			{ config_id = 5014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_5010", "GADGET_STATE_CHANGE_5017", "GADGET_STATE_CHANGE_5018", "GADGET_STATE_CHANGE_5019", "GADGET_STATE_CHANGE_5020" },
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

-- 触发操作
function action_EVENT_QUEST_START_5006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003005, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_5007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003005, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5008(context, evt)
	    if ScriptLib.GetHostQuestState(context,7901307)==3 then
	        ScriptLib.GoToFlowSuite(context, 199003005, 2)
	       end
	      
	      return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5009(context, evt)
	    if ScriptLib.GetHostQuestState(context,7901315)==3 then
	        ScriptLib.GoToFlowSuite(context, 199003005, 3)
	       end
	      
	      return 0
end

-- 触发操作
function action_EVENT_QUEST_START_5010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5017(context, evt)
	if 5011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5017(context, evt)
	-- 将configid为 5011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5018(context, evt)
	if 5012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5018(context, evt)
	-- 将configid为 5012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5019(context, evt)
	if 5013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5019(context, evt)
	-- 将configid为 5013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5020(context, evt)
	if 5014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5020(context, evt)
	-- 将configid为 5014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end