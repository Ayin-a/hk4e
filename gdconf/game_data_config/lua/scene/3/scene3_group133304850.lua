-- 基础信息
local base_info = {
	group_id = 133304850
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 850001, monster_id = 20011001, pos = { x = -1475.022, y = 135.000, z = 2575.815 }, rot = { x = 0.000, y = 184.089, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 21 },
	{ config_id = 850002, monster_id = 20011101, pos = { x = -1480.189, y = 135.000, z = 2576.765 }, rot = { x = 0.000, y = 127.314, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 21 }
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
	{ config_id = 1850003, name = "ANY_MONSTER_DIE_850003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_850003", action = "action_EVENT_ANY_MONSTER_DIE_850003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1850004, name = "MONSTER_BATTLE_850004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_850004" },
		{ config_id = 1850005, name = "ANY_MONSTER_DIE_850005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_850005", action = "action_EVENT_ANY_MONSTER_DIE_850005" }
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
		monsters = { 850001, 850002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_850003" },
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
function condition_EVENT_ANY_MONSTER_DIE_850003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_850003(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133304853) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end