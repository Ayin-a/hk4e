-- 基础信息
local base_info = {
	group_id = 133003092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 21030301, pos = { x = 2189.812, y = 212.603, z = -1481.792 }, rot = { x = 0.000, y = 346.131, z = 0.000 }, level = 7, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 92002, monster_id = 21010201, pos = { x = 2192.112, y = 213.595, z = -1464.184 }, rot = { x = 0.000, y = 235.780, z = 0.000 }, level = 7, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 92003, monster_id = 21010301, pos = { x = 2187.291, y = 212.572, z = -1478.829 }, rot = { x = 0.000, y = 113.850, z = 0.000 }, level = 7, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 92004, monster_id = 21010401, pos = { x = 2194.529, y = 212.986, z = -1488.421 }, rot = { x = 0.000, y = 74.983, z = 0.000 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 92005, monster_id = 21010401, pos = { x = 2201.950, y = 213.871, z = -1479.635 }, rot = { x = 0.000, y = 305.277, z = 0.000 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92006, gadget_id = 70211012, pos = { x = 2206.065, y = 213.755, z = -1484.890 }, rot = { x = 0.000, y = 304.142, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 92007, gadget_id = 70211101, pos = { x = 2240.216, y = 229.920, z = -1466.312 }, rot = { x = 0.826, y = 235.343, z = 349.693 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 92008, gadget_id = 70310001, pos = { x = 2195.358, y = 213.329, z = -1465.871 }, rot = { x = 0.000, y = 167.460, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 92009, gadget_id = 70310001, pos = { x = 2197.418, y = 212.431, z = -1483.562 }, rot = { x = 0.000, y = 167.460, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 92010, gadget_id = 70220005, pos = { x = 2192.345, y = 213.817, z = -1462.853 }, rot = { x = 0.000, y = 350.782, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 92011, gadget_id = 70220005, pos = { x = 2196.322, y = 212.622, z = -1486.152 }, rot = { x = 0.000, y = 18.570, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092013, name = "ANY_MONSTER_DIE_92013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92013", action = "action_EVENT_ANY_MONSTER_DIE_92013", tlog_tag = "神殿_营地_低洼_完成" }
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
		monsters = { 92001, 92002, 92003, 92004, 92005 },
		gadgets = { 92006, 92007, 92008, 92009, 92010, 92011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_92013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92013(context, evt)
	-- 解锁目标92006
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 92006, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end