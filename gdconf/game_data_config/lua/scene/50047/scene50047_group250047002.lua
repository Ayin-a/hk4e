-- 基础信息
local base_info = {
	group_id = 250047002
}

-- DEFS_MISCS
local defs = {
    FloorArrays = {
        [1] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 1, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [2] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 1, 1, 1, 0, 1, 1, 1, 0 },
            { 1, 1, 0, 1, 1, 1, 0, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [3] = {
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 1, 1, 1, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 1, 1 }
        },
        [4] = {
            { 0, 0, 0, 0, 0, 0, 1, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 0, 1, 1, 1, 0, 0 },
            { 0, 0, 0, 0, 1, 0, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 }
        },
        [5] = {
            { 1, 1, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 1, 1 }
        }
    },
    FloorArray_Size = { x = 7, y = 9 },
    Pos_Standard = { x = -320.770, y = 20.127, z = 0.155 },
    Pos_Range = { x = 2.98, y = 2.98 },
    FloorGadgetID = 70310038,
    GroupsId = 250047002,
    ArrayPath = {
         [1] = {{6, 9}, {6, 8}, {6, 7}, {6, 6}, {5, 6}, {4, 6}, {4, 5}, {4, 4}, {4, 3}, {3, 3}, {2, 3}, {2, 2}, {2, 1}},
         [2] = {{5, 9}, {5, 8}, {4, 8}, {4, 7}, {4, 6}, {5, 6}, {5, 5}, {5, 4}, {4, 4}, {4, 3}, {4, 2}, {5, 2}, {5, 1}},
         [3] = {{7, 9}, {7, 8}, {7, 7}, {6, 7}, {5, 7}, {5, 6}, {5, 5}, {4, 5}, {3, 5}, {3, 4}, {3, 3}, {2, 3}, {1, 3}, {1, 2}, {1, 1}},
         [4] = {{1, 9}, {1, 8}, {1, 7}, {2, 7}, {3, 7}, {3, 6}, {3, 5}, {4, 5}, {5, 5}, {5, 4}, {5, 3}, {6, 3}, {7, 3}, {7, 2}, {7, 1}},
         [5] = {{7, 9}, {7, 8}, {7, 7}, {7, 6}, {7, 5}, {7, 4}, {6, 4}, {5, 4}, {4, 4}, {4, 5}, {4, 6}, {3, 6}, {2, 6}, {1, 6}, {1, 5}, {1, 4}, {1, 3}, {1, 2}, {1, 1}}
     },
        EachFloorShowTime = 0.5,
        LastFloorEndShowTime = 4,
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
	{ config_id = 2001, gadget_id = 70360002, pos = { x = -313.504, y = 21.591, z = -27.834 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "GADGET_CREATE_2004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2004", action = "action_EVENT_GADGET_CREATE_2004" },
	{ config_id = 1002005, name = "SELECT_OPTION_2005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2005", action = "action_EVENT_SELECT_OPTION_2005" }
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
		gadgets = { 2001 },
		regions = { },
		triggers = { "GADGET_CREATE_2004", "SELECT_OPTION_2005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_2004(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250047002, 2001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2005(context, evt)
	-- 判断是gadgetid 2001 option_id 175
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2005(context, evt)
	ScriptLib.DelWorktopOption(context, 175)
	
	StartGallery(context, context)
	
	return 0
end