-- 基础信息
local base_info = {
	group_id = 155005044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44002, monster_id = 26050901, pos = { x = 865.931, y = 216.023, z = 155.912 }, rot = { x = 0.000, y = 129.607, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 44003, monster_id = 26051001, pos = { x = 892.882, y = 216.365, z = 146.398 }, rot = { x = 0.000, y = 295.987, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 44004, monster_id = 26051101, pos = { x = 878.661, y = 216.322, z = 136.293 }, rot = { x = 0.000, y = 330.924, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 每次加载的时候监测开启的机关变量
	{ config_id = 1044001, name = "GROUP_LOAD_44001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_44001", action = "action_EVENT_GROUP_LOAD_44001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Jiguan", value = 0, no_refresh = true }
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
		-- description = 随机用,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_44001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_44001(context, evt)
	-- 判断变量"Jiguan"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "Jiguan", 155005044) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44001(context, evt)
	-- 延迟0秒刷怪
		math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
		local randomTemp = math.random(1, 3)
		if randomTemp == 1 then
			ScriptLib.CreateMonster(context, { config_id = 44002, delay_time = 0 })
			return 0
		elseif randomTemp == 2 then
			ScriptLib.CreateMonster(context, { config_id = 44003, delay_time = 0 })
			return 0
		elseif randomTemp == 3 then
			ScriptLib.CreateMonster(context, { config_id = 44004, delay_time = 0 })
			return 0
		end
		return -1
end