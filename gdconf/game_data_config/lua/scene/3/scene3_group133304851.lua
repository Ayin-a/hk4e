-- 基础信息
local base_info = {
	group_id = 133304851
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 851001, monster_id = 20010301, pos = { x = -1470.960, y = 135.824, z = 2545.551 }, rot = { x = 0.000, y = 67.593, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 21 },
	{ config_id = 851002, monster_id = 20010401, pos = { x = -1459.594, y = 135.566, z = 2551.890 }, rot = { x = 0.000, y = 219.190, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 21 }
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
	{ config_id = 1851003, name = "ANY_MONSTER_DIE_851003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_851003", action = "action_EVENT_ANY_MONSTER_DIE_851003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1851004, name = "MONSTER_BATTLE_851004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_851004" },
		{ config_id = 1851005, name = "ANY_MONSTER_DIE_851005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_851005", action = "action_EVENT_ANY_MONSTER_DIE_851005" }
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
		monsters = { 851001, 851002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_851003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_851003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_851003(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133304853) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end