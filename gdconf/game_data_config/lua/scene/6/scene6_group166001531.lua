-- 基础信息
local base_info = {
	group_id = 166001531
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
	{ config_id = 531001, gadget_id = 70230096, pos = { x = 49.841, y = 338.074, z = 400.336 }, rot = { x = 88.851, y = 303.166, z = 167.319 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531002, gadget_id = 70230097, pos = { x = 49.482, y = 316.472, z = 411.375 }, rot = { x = 57.714, y = 103.487, z = 317.025 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531003, gadget_id = 70230099, pos = { x = 676.467, y = 404.988, z = 767.296 }, rot = { x = 85.093, y = 14.760, z = 14.780 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531004, gadget_id = 70230098, pos = { x = 607.920, y = 379.802, z = 768.458 }, rot = { x = 79.366, y = 217.227, z = 35.905 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531005, gadget_id = 70230091, pos = { x = 659.720, y = 400.125, z = 581.867 }, rot = { x = 64.990, y = 196.005, z = 17.982 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531006, gadget_id = 70230092, pos = { x = 328.984, y = 377.917, z = 358.416 }, rot = { x = 61.166, y = 123.941, z = 58.634 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531007, gadget_id = 70230093, pos = { x = 378.560, y = 84.864, z = 1136.979 }, rot = { x = 297.795, y = 43.501, z = 321.452 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531008, gadget_id = 70230094, pos = { x = 278.043, y = 75.368, z = 1391.802 }, rot = { x = 79.284, y = 224.177, z = 48.960 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 531009, gadget_id = 70230095, pos = { x = 1194.806, y = 745.170, z = 359.682 }, rot = { x = 86.478, y = 274.285, z = 14.409 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1531010, name = "ANY_GADGET_DIE_531010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_531010", action = "action_EVENT_ANY_GADGET_DIE_531010", trigger_count = 0 },
	{ config_id = 1531011, name = "GROUP_LOAD_531011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_531011", action = "action_EVENT_GROUP_LOAD_531011", trigger_count = 0 }
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
		gadgets = { 531001, 531002, 531003, 531004, 531005, 531006, 531007, 531008, 531009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_531010", "GROUP_LOAD_531011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_531010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001531}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_531010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6077, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_531011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001531}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_531011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6077, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end