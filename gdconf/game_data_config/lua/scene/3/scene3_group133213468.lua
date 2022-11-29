-- 基础信息
local base_info = {
	group_id = 133213468
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 468001, monster_id = 28020801, pos = { x = -3583.057, y = 239.287, z = -3115.721 }, rot = { x = 0.000, y = 330.445, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 468002, gadget_id = 70360277, pos = { x = -3586.759, y = 240.328, z = -3114.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 101, area_id = 12 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 468003, gadget_id = 70360273, pos = { x = -3585.982, y = 241.429, z = -3104.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 12 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 468004, gadget_id = 70360273, pos = { x = -3595.000, y = 243.360, z = -3102.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 12 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 468005, gadget_id = 70360274, pos = { x = -3611.338, y = 244.593, z = -3078.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 12 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 468006, gadget_id = 70220050, pos = { x = -3602.365, y = 247.222, z = -3074.355 }, rot = { x = 307.215, y = 347.483, z = 332.340 }, level = 30, area_id = 12 },
	{ config_id = 468007, gadget_id = 70210101, pos = { x = -3602.365, y = 247.222, z = -3074.355 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 468008, gadget_id = 70360276, pos = { x = -3602.207, y = 247.350, z = -3074.408 }, rot = { x = 0.000, y = 337.738, z = 0.000 }, level = 30, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1468009, name = "ANY_MONSTER_DIE_468009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_468009", action = "action_EVENT_ANY_MONSTER_DIE_468009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1468010, name = "ANY_GADGET_DIE_468010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_468010", action = "action_EVENT_ANY_GADGET_DIE_468010" },
	{ config_id = 1468011, name = "GADGET_STATE_CHANGE_468011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_468011", action = "action_EVENT_GADGET_STATE_CHANGE_468011" }
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
			{ config_id = 468002, state = 0 },
			{ config_id = 468003, state = 0 },
			{ config_id = 468004, state = 0 },
			{ config_id = 468005, state = 0 }
		},
		monsters = {
			{ config_id = 468001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_468009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 468006, state = 0 },
			{ config_id = 468008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_468010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 468007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_468011" },
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
function condition_EVENT_ANY_MONSTER_DIE_468009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_468009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133213468, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213468, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_468010(context, evt)
	if 468006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_468010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 468008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 468006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213468, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133213468, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_468011(context, evt)
	if 468007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_468011(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213468, 4)
	
	return 0
end