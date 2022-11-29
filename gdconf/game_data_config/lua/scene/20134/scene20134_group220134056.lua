-- 基础信息
local base_info = {
	group_id = 220134056
}

-- DEFS_MISCS
local        defs = {

			is_movable = 1,
		
			patterns = 
			{
					--形态1
					[1] = 
					{
							[56001] = {connect =56002 , point_array = 55, point_id = {1}} ,
							[56002] = {connect =56003 , point_array = 56, point_id = {1}} ,
							[56003] = {connect =56004 , point_array = 57, point_id = {1}} ,
							[56004] = {connect =0 , point_array = 58, point_id = {1}} ,
							[56005] = {connect =56003 , point_array = 59, point_id = {1}} ,
							[56006] = {connect =0 , point_array = 60, point_id = {1}} ,
							[56007] = {connect =0 , point_array = 61, point_id = {1}} ,
							[56008] = {connect =0 , point_array = 62, point_id = {1}} ,
					},
		
					--形态1
					[2] = 
					{
							[56001] = {connect =56003 , point_array = 55, point_id = {2}} ,
							[56002] = {connect =56001 , point_array = 56, point_id = {2}} ,
							[56003] = {connect =56006 , point_array = 57, point_id = {2}} ,
							[56004] = {connect =0 , point_array = 58, point_id = {2}} ,
							[56005] = {connect =56004 , point_array = 59, point_id = {2}} ,
							[56006] = {connect =56005 , point_array = 60, point_id = {2}} ,
							[56007] = {connect =0 , point_array = 61, point_id = {2}} ,
							[56008] = {connect =0 , point_array = 62, point_id = {2}} ,
					},

					[3] = 
					{
							[56001] = {connect =56002 , point_array = 55, point_id = {3}} ,
							[56002] = {connect =56003 , point_array = 56, point_id = {3}} ,
							[56003] = {connect =56004 , point_array = 57, point_id = {3}} ,
							[56004] = {connect =56005 , point_array = 58, point_id = {3}} ,
							[56005] = {connect =56006 , point_array = 59, point_id = {3}} ,
							[56006] = {connect =56007 , point_array = 60, point_id = {3}} ,
							[56007] = {connect =56008 , point_array = 61, point_id = {3}} ,
							[56008] = {connect =0 , point_array = 62, point_id = {3}} ,
					},

					[4] = 
					{
							[56001] = {connect =56002 , point_array = 55, point_id = {4}} ,
							[56002] = {connect =0 , point_array = 56, point_id = {4}} ,
							[56003] = {connect =56001 , point_array = 57, point_id = {4}} ,
							[56004] = {connect =56008 , point_array = 58, point_id = {4}} ,
							[56005] = {connect =56004 , point_array = 59, point_id = {4}} ,
							[56006] = {connect =56005 , point_array = 60, point_id = {4}} ,
							[56007] = {connect =56006 , point_array = 61, point_id = {4}} ,
							[56008] = {connect =56001 , point_array = 62, point_id = {4}} ,
					},


			},
			
		
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
	[56001] = { config_id = 56001, gadget_id = 70310231, pos = { x = 216.369, y = 650.503, z = -1754.569 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56002] = { config_id = 56002, gadget_id = 70310231, pos = { x = 212.012, y = 652.063, z = -1756.317 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56003] = { config_id = 56003, gadget_id = 70310231, pos = { x = 208.164, y = 647.768, z = -1758.096 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56004] = { config_id = 56004, gadget_id = 70310455, pos = { x = 215.702, y = 642.218, z = -1754.840 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56005] = { config_id = 56005, gadget_id = 70310231, pos = { x = 211.991, y = 642.216, z = -1756.864 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56006] = { config_id = 56006, gadget_id = 70310231, pos = { x = 216.265, y = 633.911, z = -1754.661 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56007] = { config_id = 56007, gadget_id = 70310455, pos = { x = 219.165, y = 632.074, z = -1753.778 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[56008] = { config_id = 56008, gadget_id = 70310231, pos = { x = 208.568, y = 632.716, z = -1759.590 }, rot = { x = 0.000, y = 246.888, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1056009, name = "GROUP_LOAD_56009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56009", action = "action_EVENT_GROUP_LOAD_56009", trigger_count = 0 },
	{ config_id = 1056010, name = "GROUP_LOAD_56010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56010", action = "action_EVENT_GROUP_LOAD_56010", trigger_count = 0 },
	{ config_id = 1056011, name = "GROUP_LOAD_56011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56011", action = "action_EVENT_GROUP_LOAD_56011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "form", value = 0, no_refresh = true }
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
		gadgets = { 56001, 56002, 56003, 56004, 56005, 56006, 56007, 56008 },
		regions = { },
		triggers = { "GROUP_LOAD_56009", "GROUP_LOAD_56010", "GROUP_LOAD_56011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_56009(context, evt)
	-- 判断变量"form"为2
	if ScriptLib.GetGroupVariableValue(context, "form") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56009(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56010(context, evt)
	-- 判断变量"form"为3
	if ScriptLib.GetGroupVariableValue(context, "form") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56010(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56011(context, evt)
	-- 判断变量"form"为4
	if ScriptLib.GetGroupVariableValue(context, "form") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56011(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/ConstellationPattern"