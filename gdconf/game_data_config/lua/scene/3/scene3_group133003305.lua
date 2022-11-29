-- 基础信息
local base_info = {
	group_id = 133003305
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 21030101, pos = { x = 2889.816, y = 257.674, z = -1836.699 }, rot = { x = 0.000, y = 217.141, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 1006, monster_id = 20011001, pos = { x = 2889.904, y = 257.544, z = -1839.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1007, monster_id = 21010401, pos = { x = 2887.682, y = 257.465, z = -1839.547 }, rot = { x = 0.000, y = 34.161, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 1008, monster_id = 21010901, pos = { x = 2879.867, y = 259.912, z = -1847.143 }, rot = { x = 0.000, y = 201.413, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 1009, monster_id = 21010901, pos = { x = 2880.419, y = 266.047, z = -1839.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 305001, monster_id = 21010502, pos = { x = 2876.548, y = 259.912, z = -1844.071 }, rot = { x = 0.000, y = 250.115, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 305002, monster_id = 21011001, pos = { x = 2879.466, y = 259.912, z = -1847.949 }, rot = { x = 0.000, y = 250.115, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 305003, monster_id = 21011001, pos = { x = 2879.419, y = 265.877, z = -1846.494 }, rot = { x = 0.000, y = 244.447, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 305004, monster_id = 21010502, pos = { x = 2877.194, y = 265.877, z = -1843.382 }, rot = { x = 0.000, y = 244.447, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 305005, monster_id = 21020101, pos = { x = 2872.468, y = 256.238, z = -1844.320 }, rot = { x = 0.000, y = 232.614, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 401, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3247, gadget_id = 70220013, pos = { x = 2883.876, y = 257.531, z = -1836.166 }, rot = { x = 0.000, y = 350.563, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3248, gadget_id = 70220013, pos = { x = 2885.441, y = 257.429, z = -1838.557 }, rot = { x = 0.000, y = 34.652, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3249, gadget_id = 70220014, pos = { x = 2885.725, y = 257.287, z = -1840.873 }, rot = { x = 0.000, y = 86.159, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 3250, gadget_id = 70310001, pos = { x = 2887.541, y = 257.709, z = -1834.661 }, rot = { x = 0.000, y = 267.191, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3251, gadget_id = 70211101, pos = { x = 2883.609, y = 257.360, z = -1838.243 }, rot = { x = 0.000, y = 312.636, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3252, gadget_id = 70310004, pos = { x = 2888.404, y = 257.596, z = -1837.668 }, rot = { x = 0.000, y = 175.075, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000607, name = "ANY_MONSTER_DIE_607", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_607", action = "action_EVENT_ANY_MONSTER_DIE_607" }
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
		monsters = { 1005, 1006, 1007, 1008, 1009 },
		gadgets = { 3247, 3248, 3249, 3250, 3251, 3252 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 305001, 305002, 305003, 305004, 305005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_607" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_607(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_607(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end