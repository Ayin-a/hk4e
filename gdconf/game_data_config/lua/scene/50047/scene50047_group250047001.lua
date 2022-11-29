-- 基础信息
local base_info = {
	group_id = 250047001
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
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 1, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [3] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 1, 1, 1, 0, 1, 1, 1, 0 },
            { 1, 1, 0, 1, 1, 1, 0, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [4] = {
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 1, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 1, 1, 1, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 1, 1, 1 }
        },
        [5] = {
            { 0, 0, 0, 0, 0, 0, 1, 1, 1 },
            { 0, 0, 0, 0, 0, 0, 1, 0, 0 },
            { 0, 0, 0, 0, 1, 1, 1, 0, 0 },
            { 0, 0, 0, 0, 1, 0, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 }
        },
        [6] = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 1, 1, 1, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 1, 0, 0, 1, 1, 1, 1 },
            { 0, 0, 1, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
        },
        [7] = {
            { 1, 1, 1, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 1, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 0, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 1, 1, 1, 1, 1, 1 }
        },
        [8] = {
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
    Pos_Standard = { x = 216.770, y = 20.127, z = 0.155 },
    Pos_Range = { x = 3, y = 3 },
    FloorGadgetID = 70310038,
    GroupsId = 250047001,
    ArrayPath = {
         [1] = {{6, 9}, {6, 8}, {6, 7}, {5, 7}, {4, 7}, {3, 7}, {2, 7}, {2, 6}, {2, 5}, {2, 4}, {3, 4}, {4, 4}, {4, 3}, {4, 2}, {4, 1}},
         [2] = {{6, 9}, {6, 8}, {6, 7}, {6, 6}, {5, 6}, {4, 6}, {4, 5}, {4, 4}, {4, 3}, {3, 3}, {2, 3}, {2, 2}, {2, 1}},
         [3] = {{5, 9}, {5, 8}, {4, 8}, {4, 7}, {4, 6}, {5, 6}, {5, 5}, {5, 4}, {4, 4}, {4, 3}, {4, 2}, {5, 2}, {5, 1}},
         [4] = {{7, 9}, {7, 8}, {7, 7}, {6, 7}, {5, 7}, {5, 6}, {5, 5}, {4, 5}, {3, 5}, {3, 4}, {3, 3}, {2, 3}, {1, 3}, {1, 2}, {1, 1}},
         [5] = {{1, 9}, {1, 8}, {1, 7}, {2, 7}, {3, 7}, {3, 6}, {3, 5}, {4, 5}, {5, 5}, {5, 4}, {5, 3}, {6, 3}, {7, 3}, {7, 2}, {7, 1}},
         [6] = {{4, 9}, {4, 8}, {4, 7}, {4, 6}, {5, 6}, {6, 6}, {6, 5}, {6, 4}, {6, 3}, {5, 3}, {4, 3}, {3, 3}, {3, 2}, {3, 1}},
         [7] = {{7, 9}, {7, 8}, {7, 7}, {7, 6}, {7, 5}, {7, 4}, {6, 4}, {5, 4}, {4, 4}, {4, 5}, {4, 6}, {3, 6}, {2, 6}, {1, 6}, {1, 5}, {1, 4}, {1, 3}, {1, 2}, {1, 1}},
         [8] = {{5, 9}, {5, 8}, {4, 8}, {3, 8}, {3, 7}, {3, 6}, {4, 6}, {5, 6}, {6, 6}, {6, 5}, {6, 4}, {6, 3}, {5, 3}, {4, 3}, {3, 3}, {2, 3}, {2, 2}, {2, 1}}
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
	{ config_id = 1001, gadget_id = 70360002, pos = { x = 223.991, y = 21.591, z = -27.834 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 5.000, z = 45.000 }, pos = { x = 225.306, y = 15.575, z = -5.657 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002" },
	{ config_id = 1001003, name = "SELECT_OPTION_1003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1003", action = "action_EVENT_SELECT_OPTION_1003" },
	{ config_id = 1001004, name = "ENTER_REGION_1004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1004", action = "action_EVENT_ENTER_REGION_1004" }
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
		gadgets = { 1001 },
		regions = { 1004 },
		triggers = { "GADGET_CREATE_1002", "SELECT_OPTION_1003", "ENTER_REGION_1004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1002(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250047001, 1001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1003(context, evt)
	-- 判断是gadgetid 1001 option_id 175
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1003(context, evt)
	ScriptLib.DelWorktopOption(context, 175)
	
	StartGallery(context, context)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1004(context, evt)
	if evt.param1 ~= 1004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1004(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = {x=224, y= 21.59, z=-27}, radius = 3, rot = {x=0, y=0, z=0}}) 
	
	return 0
end