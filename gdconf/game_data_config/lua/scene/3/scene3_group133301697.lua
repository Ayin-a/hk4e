-- 基础信息
local base_info = {
	group_id = 133301697
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 697001, monster_id = 26090501, pos = { x = -732.565, y = 127.726, z = 3437.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 697002, monster_id = 26090501, pos = { x = -738.863, y = 129.118, z = 3449.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 23 },
	{ config_id = 697007, monster_id = 26120201, pos = { x = -719.738, y = 124.670, z = 3448.632 }, rot = { x = 0.000, y = 344.237, z = 0.000 }, level = 33, drop_tag = "大蕈兽", isOneoff = true, pose_id = 201, area_id = 22 },
	{ config_id = 697008, monster_id = 26120101, pos = { x = -737.935, y = 133.652, z = 3414.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "大蕈兽", isOneoff = true, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 697005, gadget_id = 70330219, pos = { x = -719.804, y = 124.571, z = 3448.391 }, rot = { x = 0.870, y = 325.705, z = 348.426 }, level = 30, persistent = true, area_id = 22 },
	{ config_id = 697006, gadget_id = 70330218, pos = { x = -737.391, y = 134.399, z = 3413.664 }, rot = { x = 23.912, y = 329.266, z = 0.023 }, level = 33, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1697009, name = "ANY_GADGET_DIE_697009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_697009", action = "action_EVENT_ANY_GADGET_DIE_697009" },
	{ config_id = 1697010, name = "ANY_GADGET_DIE_697010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_697010", action = "action_EVENT_ANY_GADGET_DIE_697010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 697003, monster_id = 26090501, pos = { x = -743.582, y = 130.117, z = 3443.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 102, area_id = 23 }
	}
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
		monsters = { 697001, 697002 },
		gadgets = { 697005, 697006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_697009", "ANY_GADGET_DIE_697010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_697009(context, evt)
	if 697005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_697009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 697007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_697010(context, evt)
	if 697006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_697010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 697008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end