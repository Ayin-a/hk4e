-- 基础信息
local base_info = {
	group_id = 133108045
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
	{ config_id = 45002, gadget_id = 70300089, pos = { x = -183.858, y = 208.410, z = -1037.200 }, rot = { x = 0.000, y = 27.001, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45003, gadget_id = 70300089, pos = { x = -176.071, y = 208.410, z = -1033.356 }, rot = { x = 0.000, y = 21.463, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45004, gadget_id = 70300089, pos = { x = -187.292, y = 208.410, z = -1029.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45005, gadget_id = 70300089, pos = { x = -179.667, y = 208.410, z = -1025.439 }, rot = { x = 0.000, y = 327.078, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45006, gadget_id = 70300089, pos = { x = -187.280, y = 208.410, z = -1033.693 }, rot = { x = 0.000, y = 350.276, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45007, gadget_id = 70300089, pos = { x = -176.498, y = 208.410, z = -1028.646 }, rot = { x = 0.000, y = 285.907, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45008, gadget_id = 70300089, pos = { x = -179.161, y = 208.410, z = -1036.913 }, rot = { x = 0.000, y = 35.852, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 45009, gadget_id = 70211111, pos = { x = -180.574, y = 208.874, z = -1034.274 }, rot = { x = 0.305, y = 340.119, z = 359.958 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045001, name = "ANY_GADGET_DIE_45001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_45001", action = "action_EVENT_ANY_GADGET_DIE_45001" }
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
		gadgets = { 45002, 45003, 45004, 45005, 45006, 45007, 45008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_45001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_45001(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133108045}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_45001(context, evt)
	-- 创建id为45009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end