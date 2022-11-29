-- 基础信息
local base_info = {
	group_id = 133210043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43002, monster_id = 23010601, pos = { x = -4092.000, y = 212.234, z = -1167.151 }, rot = { x = 0.000, y = 109.772, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 17 },
	{ config_id = 43003, monster_id = 23010401, pos = { x = -4096.372, y = 213.056, z = -1165.351 }, rot = { x = 0.000, y = 278.873, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 17 },
	{ config_id = 43005, monster_id = 23030101, pos = { x = -4084.477, y = 202.768, z = -1192.464 }, rot = { x = 0.000, y = 301.206, z = 0.000 }, level = 30, drop_tag = "召唤师", disableWander = true, area_id = 17 },
	{ config_id = 43006, monster_id = 26060101, pos = { x = -4085.969, y = 202.600, z = -1193.068 }, rot = { x = 0.000, y = 69.926, z = 0.000 }, level = 30, drop_tag = "雷萤", area_id = 17 },
	{ config_id = 43007, monster_id = 26060101, pos = { x = -4088.059, y = 202.866, z = -1190.142 }, rot = { x = 0.000, y = 95.222, z = 0.000 }, level = 30, drop_tag = "雷萤", area_id = 17 },
	{ config_id = 43008, monster_id = 26060101, pos = { x = -4085.316, y = 203.085, z = -1189.808 }, rot = { x = 0.000, y = 218.434, z = 0.000 }, level = 30, drop_tag = "雷萤", area_id = 17 }
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
	{ config_id = 1043009, name = "ANY_MONSTER_DIE_43009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43009", action = "action_EVENT_ANY_MONSTER_DIE_43009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 43001, monster_id = 23010301, pos = { x = -4090.497, y = 212.069, z = -1165.420 }, rot = { x = 0.000, y = 84.061, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 17 },
		{ config_id = 43004, monster_id = 23010601, pos = { x = -4086.842, y = 211.144, z = -1169.226 }, rot = { x = 0.000, y = 137.383, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 17 }
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
		monsters = { 43002, 43003, 43005, 43006, 43007, 43008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43009" },
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
function condition_EVENT_ANY_MONSTER_DIE_43009(context, evt)
	--判断死亡怪物的configid是否为 43005
	if evt.param1 ~= 43005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43009(context, evt)
	-- 将本组内变量名为 "GadgetChange" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetChange", 1, 133210077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end