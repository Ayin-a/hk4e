-- 基础信息
local base_info = {
	group_id = 133003286
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
	{ config_id = 3134, gadget_id = 70220014, pos = { x = 2321.019, y = 287.515, z = -1745.902 }, rot = { x = 0.000, y = 154.914, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 3135, gadget_id = 70220014, pos = { x = 2323.049, y = 293.225, z = -1769.083 }, rot = { x = 0.000, y = 39.179, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 3136, gadget_id = 70220014, pos = { x = 2312.536, y = 293.334, z = -1750.558 }, rot = { x = 0.000, y = 80.895, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 3138, gadget_id = 70211111, pos = { x = 2320.571, y = 286.964, z = -1755.750 }, rot = { x = 0.000, y = 338.057, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000197, name = "ANY_GADGET_DIE_197", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_197", trigger_count = 0, tlog_tag = "神殿_谜题_守卫木桶_开始" },
	{ config_id = 1000198, name = "ANY_GADGET_DIE_198", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198", action = "" }
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
		gadgets = { 3134, 3135, 3136 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_197", "ANY_GADGET_DIE_198" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3138 },
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

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_197(context, evt)
		-- 重新生成指定group，指定suite
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003286}) == 0 then
	
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003286, suite = 2 }) then
			return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_198(context, evt)
	if 3134 ~= evt.param1 then
		return false
	end
	
	return true
end