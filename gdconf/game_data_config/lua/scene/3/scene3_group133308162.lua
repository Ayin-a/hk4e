-- 基础信息
local base_info = {
	group_id = 133308162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162005, monster_id = 25020201, pos = { x = -1985.491, y = 175.475, z = 4763.146 }, rot = { x = 0.000, y = 0.746, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9004, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 162006, monster_id = 25010201, pos = { x = -1970.847, y = 172.940, z = 4785.071 }, rot = { x = 0.000, y = 245.611, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 162007, monster_id = 25310301, pos = { x = -1986.494, y = 176.193, z = 4769.903 }, rot = { x = 0.000, y = 148.938, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 162013, monster_id = 25210503, pos = { x = -1974.179, y = 173.995, z = 4784.650 }, rot = { x = 0.000, y = 93.614, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162002, gadget_id = 70211002, pos = { x = -1987.340, y = 179.324, z = 4779.695 }, rot = { x = 1.437, y = 123.589, z = 357.218 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 162008, gadget_id = 70310006, pos = { x = -1986.026, y = 175.648, z = 4766.576 }, rot = { x = 350.598, y = 314.238, z = 0.749 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 162010, gadget_id = 70330397, pos = { x = -2007.042, y = 174.376, z = 4744.871 }, rot = { x = 359.095, y = 277.377, z = 4.508 }, level = 32, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 162011, gadget_id = 70330397, pos = { x = -1955.359, y = 177.373, z = 4753.566 }, rot = { x = 357.708, y = 359.743, z = 359.222 }, level = 32, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 162014, gadget_id = 70210101, pos = { x = -1980.265, y = 175.549, z = 4765.580 }, rot = { x = 18.728, y = 358.674, z = 351.973 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 26 },
	{ config_id = 162015, gadget_id = 70220051, pos = { x = -1981.629, y = 175.543, z = 4765.089 }, rot = { x = 10.268, y = 52.798, z = 358.884 }, level = 32, area_id = 26 },
	{ config_id = 162017, gadget_id = 70220052, pos = { x = -1982.745, y = 175.753, z = 4761.996 }, rot = { x = 5.267, y = 259.501, z = 359.025 }, level = 32, area_id = 26 },
	{ config_id = 162020, gadget_id = 70330397, pos = { x = -1949.648, y = 170.246, z = 4796.059 }, rot = { x = 354.271, y = 254.637, z = 7.889 }, level = 32, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162003, name = "ANY_MONSTER_DIE_162003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162003", action = "action_EVENT_ANY_MONSTER_DIE_162003" }
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
		monsters = { 162005, 162006, 162007, 162013 },
		gadgets = { 162002, 162008, 162010, 162011, 162014, 162015, 162017, 162020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162003(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end