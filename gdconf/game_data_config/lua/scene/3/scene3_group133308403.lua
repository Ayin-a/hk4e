-- 基础信息
local base_info = {
	group_id = 133308403
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 403001, monster_id = 21030201, pos = { x = -1775.307, y = 168.659, z = 4838.771 }, rot = { x = 0.000, y = 295.922, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 26 },
	{ config_id = 403004, monster_id = 21010501, pos = { x = -1785.050, y = 168.439, z = 4840.113 }, rot = { x = 0.000, y = 59.163, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 26 },
	{ config_id = 403008, monster_id = 21011001, pos = { x = -1782.706, y = 167.232, z = 4844.496 }, rot = { x = 0.000, y = 142.773, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 26 },
	{ config_id = 403009, monster_id = 21010201, pos = { x = -1781.148, y = 167.795, z = 4841.018 }, rot = { x = 0.000, y = 118.885, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 403002, gadget_id = 70211002, pos = { x = -1773.224, y = 168.658, z = 4839.114 }, rot = { x = 1.121, y = 271.612, z = 354.095 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 403005, gadget_id = 70300085, pos = { x = -1774.297, y = 168.163, z = 4839.256 }, rot = { x = 2.979, y = 288.834, z = 354.426 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 403006, gadget_id = 70220126, pos = { x = -1774.617, y = 168.486, z = 4840.540 }, rot = { x = 359.555, y = 256.675, z = 354.006 }, level = 32, area_id = 26 },
	{ config_id = 403007, gadget_id = 70300089, pos = { x = -1771.938, y = 168.001, z = 4842.104 }, rot = { x = 12.851, y = 359.285, z = 353.659 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1403003, name = "ANY_MONSTER_DIE_403003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_403003", action = "action_EVENT_ANY_MONSTER_DIE_403003" }
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
		monsters = { 403001, 403004, 403008, 403009 },
		gadgets = { 403002, 403005, 403006, 403007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_403003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_403003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_403003(context, evt)
	-- 将configid为 403002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 403002, GadgetState.Default) then
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