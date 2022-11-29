-- 基础信息
local base_info = {
	group_id = 133212246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 28020801, pos = { x = -3712.080, y = 244.492, z = -2155.237 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 246002, gadget_id = 70360277, pos = { x = -3714.620, y = 243.289, z = -2143.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 101, area_id = 13 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 246003, gadget_id = 70360273, pos = { x = -3715.032, y = 240.869, z = -2128.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 13 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 246004, gadget_id = 70360273, pos = { x = -3723.879, y = 244.703, z = -2143.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 13 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 246005, gadget_id = 70360274, pos = { x = -3726.380, y = 241.158, z = -2115.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 6, area_id = 13 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 246006, gadget_id = 70900394, pos = { x = -3726.380, y = 241.002, z = -2115.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 246007, gadget_id = 70210101, pos = { x = -3726.380, y = 241.002, z = -2115.405 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 13 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 246008, gadget_id = 70360276, pos = { x = -3726.380, y = 241.002, z = -2115.405 }, rot = { x = 0.000, y = 358.432, z = 0.000 }, level = 30, area_id = 13 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 246011, gadget_id = 70360273, pos = { x = -3729.771, y = 244.204, z = -2131.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 13 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 246012, gadget_id = 70360273, pos = { x = -3725.309, y = 242.900, z = -2127.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 4, area_id = 13 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 246013, gadget_id = 70360273, pos = { x = -3726.380, y = 241.002, z = -2115.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 5, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246009, name = "ANY_MONSTER_DIE_246009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246009", action = "action_EVENT_ANY_MONSTER_DIE_246009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1246010, name = "GADGET_STATE_CHANGE_246010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246010", action = "action_EVENT_GADGET_STATE_CHANGE_246010" },
	{ config_id = 1246014, name = "GADGET_STATE_CHANGE_246014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246014", action = "action_EVENT_GADGET_STATE_CHANGE_246014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "133212246", value = 0, no_refresh = false }
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
	end_suite = 0,
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
			{ config_id = 246002, state = 0 },
			{ config_id = 246003, state = 0 },
			{ config_id = 246004, state = 0 },
			{ config_id = 246005, state = 0 },
			{ config_id = 246011, state = 0 },
			{ config_id = 246012, state = 0 },
			{ config_id = 246013, state = 0 }
		},
		monsters = {
			{ config_id = 246001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "133212246", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 246006, state = 0 },
			{ config_id = 246008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_246010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "133212246", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 246007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_246014" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "133212246", value = 0, no_refresh = false }
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
			{ config_id = 1, name = "133212246", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133212246, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133212246, 2)
	
	-- 将本组内变量名为 "sword_01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "sword_01", 1, 133212273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246010(context, evt)
	if 246006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133212246, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133212246, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246014(context, evt)
	if 246007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246014(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133212246, 4)
	
	return 0
end