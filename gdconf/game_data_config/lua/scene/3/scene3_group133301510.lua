-- 基础信息
local base_info = {
	group_id = 133301510
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 510001, monster_id = 28020313, pos = { x = -989.088, y = 197.708, z = 3600.777 }, rot = { x = 0.000, y = 72.865, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 23 },
	{ config_id = 510004, monster_id = 28020313, pos = { x = -984.974, y = 197.835, z = 3598.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 },
	{ config_id = 510006, monster_id = 28020314, pos = { x = -981.122, y = 197.662, z = 3598.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 },
	{ config_id = 510007, monster_id = 28020314, pos = { x = -979.826, y = 196.885, z = 3592.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 510002, gadget_id = 70330199, pos = { x = -988.762, y = 197.680, z = 3600.574 }, rot = { x = 0.000, y = 86.039, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1510003, name = "GADGET_STATE_CHANGE_510003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_510003", action = "action_EVENT_GADGET_STATE_CHANGE_510003" }
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
		monsters = { 510004, 510006, 510007 },
		gadgets = { 510002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_510003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 510001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_510003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 510002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_510003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301510, 2)
	
	return 0
end