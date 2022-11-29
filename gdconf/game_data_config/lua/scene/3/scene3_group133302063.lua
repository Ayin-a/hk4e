-- 基础信息
local base_info = {
	group_id = 133302063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63003, monster_id = 28050106, pos = { x = -789.998, y = 209.188, z = 2700.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
	{ config_id = 63004, monster_id = 28050106, pos = { x = -789.546, y = 208.997, z = 2700.023 }, rot = { x = 0.000, y = 143.022, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
	{ config_id = 63005, monster_id = 28030313, pos = { x = -788.002, y = 210.288, z = 2707.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63001, gadget_id = 70330199, pos = { x = -789.612, y = 207.792, z = 2699.982 }, rot = { x = 6.252, y = 318.205, z = 354.806 }, level = 27, state = GadgetState.GearStop, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1063002, name = "GADGET_STATE_CHANGE_63002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63002", action = "action_EVENT_GADGET_STATE_CHANGE_63002" }
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
		monsters = { 63005 },
		gadgets = { 63001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_63002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 63003, 63004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_63002(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 63001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_63002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302063, 2)
	
	return 0
end