-- 基础信息
local base_info = {
	group_id = 133002085
}

-- Trigger变量
local defs = {
	monster_id_1 = 192,
	monster_id_2 = 190
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185, monster_id = 21020201, pos = { x = 1648.228, y = 265.543, z = -765.201 }, rot = { x = 0.000, y = 165.928, z = 0.000 }, level = 13, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 187, monster_id = 21010201, pos = { x = 1644.845, y = 265.797, z = -770.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 188, monster_id = 21010201, pos = { x = 1652.181, y = 265.529, z = -768.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 189, monster_id = 21030201, pos = { x = 1652.795, y = 265.919, z = -762.195 }, rot = { x = 0.000, y = 167.231, z = 0.000 }, level = 13, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 190, monster_id = 21010701, pos = { x = 1639.356, y = 268.931, z = -742.011 }, rot = { x = 0.000, y = 173.545, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 191, monster_id = 21010701, pos = { x = 1639.271, y = 266.711, z = -744.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 192, monster_id = 21010701, pos = { x = 1627.760, y = 268.511, z = -778.304 }, rot = { x = 0.000, y = 69.557, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 193, monster_id = 21010701, pos = { x = 1626.148, y = 268.511, z = -780.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 194, monster_id = 21010701, pos = { x = 1681.453, y = 258.231, z = -748.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 195, monster_id = 21010701, pos = { x = 1679.670, y = 258.231, z = -745.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 196, monster_id = 21010701, pos = { x = 1685.189, y = 258.231, z = -747.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1048, gadget_id = 70211012, pos = { x = 1632.765, y = 266.484, z = -755.759 }, rot = { x = 0.000, y = 118.602, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000092, name = "ANY_MONSTER_DIE_92", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92", action = "action_EVENT_ANY_MONSTER_DIE_92" },
	{ config_id = 1000094, name = "ANY_MONSTER_DIE_94", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94", action = "action_EVENT_ANY_MONSTER_DIE_94", tlog_tag = "酒庄_85_清泉镇后山营地大_挑战成功" }
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
	rand_suite = true
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
		monsters = { 185, 187, 188, 189 },
		gadgets = { 1048 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92", "ANY_MONSTER_DIE_94" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_92(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002084) == 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1653, y=267, z=-758}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	if 0 ~= ScriptLib.ShowReminder(context, 1005) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_2, delay_time = 0.5 }) then
	  return -1
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94(context, evt)
	-- 解锁目标1048
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1048, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end