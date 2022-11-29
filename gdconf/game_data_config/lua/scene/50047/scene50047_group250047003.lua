-- 基础信息
local base_info = {
	group_id = 250047003
}

-- DEFS_MISCS
local defs = {
    FloorArrays = {
        [1] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 1, 0, 0 },
            { 1, 1, 1, 1, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [2] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 1, 1, 1, 1 },
            { 0, 0, 1, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [3] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 1, 0, 0 },
            { 0, 1, 1, 1, 0, 0, 1, 1, 1 },
            { 0, 1, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [4] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 1, 1, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 1, 0 },
            { 1, 1, 1, 1, 0, 1, 0, 1, 1 },
            { 0, 0, 0, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [5] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 1, 1, 1, 0 },
            { 0, 0, 1, 0, 0, 1, 0, 1, 0 },
            { 0, 0, 1, 0, 0, 1, 0, 1, 1 },
            { 0, 0, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        }
    },
    FloorArray_Size = { x = 7, y = 9 },
    Pos_Standard = { x = -233.359, y = 20.130, z = 6.150 },
    Pos_Range = { x = 3, y = 3 },
    FloorGadgetID = 70310038,
    GroupsId = 250047003,
    ArrayPath = {
         [1] = {{6, 9}, {6, 8}, {6, 7}, {5, 7}, {4, 7}, {3, 7}, {2, 7}, {2, 6}, {2, 5}, {2, 4}, {3, 4}, {4, 4}, {4, 3}, {4, 2}, {4, 1}},
         [2] = {{4, 9}, {4, 8}, {4, 7}, {4, 6}, {5, 6}, {6, 6}, {6, 5}, {6, 4}, {6, 3}, {5, 3}, {4, 3}, {3, 3}, {3, 2}, {3, 1}},
         [3] = {{4, 9}, {4, 8}, {4, 7}, {3, 7}, {2, 7}, {2, 6}, {2, 5}, {2, 4}, {3, 4}, {4, 4}, {4, 3}, {4, 2}, {5, 2}, {6, 2}, {6, 1}},
         [4] = {{4, 9}, {4, 8}, {3, 8}, {2, 8}, {2, 7}, {2, 6}, {3, 6}, {4, 6}, {5, 6}, {5, 5}, {5, 4}, {4, 4}, {4, 3}, {4, 2}, {4, 1}},
         [5] = {{5, 9}, {5, 8}, {4, 8}, {3, 8}, {3, 7}, {3, 6}, {4, 6}, {5, 6}, {6, 6}, {6, 5}, {6, 4}, {6, 3}, {5, 3}, {4, 3}, {3, 3}, {2, 3}, {2, 2}, {2, 1}}
     },
        EachFloorShowTime = 1,
        LastFloorEndShowTime = 6,
    Rot_Standard = { x = 0.000, y = 0.000, z = 0.000 }
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
	{ config_id = 3001, gadget_id = 70360002, pos = { x = -223.089, y = 21.591, z = -27.834 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70310041, pos = { x = -223.675, y = 21.667, z = -26.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "GADGET_CREATE_3002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3002", action = "action_EVENT_GADGET_CREATE_3002" },
	{ config_id = 1003003, name = "SELECT_OPTION_3003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3003", action = "action_EVENT_SELECT_OPTION_3003" },
	{ config_id = 1003005, name = "GADGET_STATE_CHANGE_3005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3005", action = "action_EVENT_GADGET_STATE_CHANGE_3005" },
	{ config_id = 1003006, name = "GADGET_STATE_CHANGE_3006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3006", action = "action_EVENT_GADGET_STATE_CHANGE_3006" },
	{ config_id = 1003007, name = "GADGET_STATE_CHANGE_3007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3007", action = "action_EVENT_GADGET_STATE_CHANGE_3007" },
	{ config_id = 1003008, name = "GADGET_STATE_CHANGE_3008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3008", action = "action_EVENT_GADGET_STATE_CHANGE_3008" },
	{ config_id = 1003009, name = "GADGET_STATE_CHANGE_3009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3009", action = "action_EVENT_GADGET_STATE_CHANGE_3009" },
	{ config_id = 1003010, name = "GADGET_STATE_CHANGE_3010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3010", action = "action_EVENT_GADGET_STATE_CHANGE_3010" },
	{ config_id = 1003011, name = "GADGET_STATE_CHANGE_3011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3011", action = "action_EVENT_GADGET_STATE_CHANGE_3011" }
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
		monsters = { },
		gadgets = { 3001, 3004 },
		regions = { },
		triggers = { "GADGET_CREATE_3002", "SELECT_OPTION_3003", "GADGET_STATE_CHANGE_3005", "GADGET_STATE_CHANGE_3006", "GADGET_STATE_CHANGE_3007", "GADGET_STATE_CHANGE_3008", "GADGET_STATE_CHANGE_3009", "GADGET_STATE_CHANGE_3010", "GADGET_STATE_CHANGE_3011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3002(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250047003, 3001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3003(context, evt)
	-- 判断是gadgetid 3001 option_id 175
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3003(context, evt)
	ScriptLib.DelWorktopOption(context, 175)
	
	StartGallery(context, context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3005(context, evt)
	if 100001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3005(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	if 200001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3007(context, evt)
	if 300001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3007(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	if 400001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3009(context, evt)
	if 500001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3009(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3010(context, evt)
	if 600001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3010(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3011(context, evt)
	if 700001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3011(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end