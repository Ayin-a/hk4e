-- 基础信息
local base_info = {
	group_id = 133302688
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 688001, monster_id = 28050106, pos = { x = -230.473, y = 227.529, z = 2577.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 688004, monster_id = 28050106, pos = { x = -230.638, y = 227.529, z = 2577.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 688002, gadget_id = 70330199, pos = { x = -230.605, y = 227.053, z = 2577.537 }, rot = { x = 3.938, y = 41.063, z = 0.000 }, level = 27, state = GadgetState.GearStop, isOneoff = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1688003, name = "GADGET_STATE_CHANGE_688003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_688003", action = "action_EVENT_GADGET_STATE_CHANGE_688003" }
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
		gadgets = { 688002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_688003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 688001, 688004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_688003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 688002 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_688003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302688, 2)
	
	return 0
end