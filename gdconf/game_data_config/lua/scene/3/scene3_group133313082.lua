-- 基础信息
local base_info = {
	group_id = 133313082
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 21011001, pos = { x = -490.033, y = 165.676, z = 5605.743 }, rot = { x = 0.000, y = 355.773, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 },
	{ config_id = 82004, monster_id = 21030401, pos = { x = -489.223, y = 171.837, z = 5576.984 }, rot = { x = 0.000, y = 295.780, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 32 },
	{ config_id = 82007, monster_id = 21011001, pos = { x = -469.258, y = 174.415, z = 5592.858 }, rot = { x = 0.000, y = 350.375, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 },
	{ config_id = 82008, monster_id = 21020301, pos = { x = -491.654, y = 168.526, z = 5587.917 }, rot = { x = 0.000, y = 297.114, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 32 },
	{ config_id = 82010, monster_id = 20011001, pos = { x = -498.239, y = 169.259, z = 5582.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82002, gadget_id = 70211012, pos = { x = -467.873, y = 179.483, z = 5578.276 }, rot = { x = 359.872, y = 324.306, z = 359.959 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 82005, gadget_id = 70300087, pos = { x = -498.126, y = 168.796, z = 5582.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 82006, gadget_id = 70220049, pos = { x = -492.967, y = 168.688, z = 5590.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 82009, gadget_id = 70310006, pos = { x = -489.043, y = 171.135, z = 5583.185 }, rot = { x = 0.444, y = 0.550, z = 357.653 }, level = 32, area_id = 32 },
	{ config_id = 82011, gadget_id = 70210101, pos = { x = -517.889, y = 167.564, z = 5572.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 82012, gadget_id = 70210101, pos = { x = -493.382, y = 169.308, z = 5589.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 82013, gadget_id = 70210101, pos = { x = -486.552, y = 171.885, z = 5574.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082003, name = "ANY_MONSTER_DIE_82003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82003", action = "action_EVENT_ANY_MONSTER_DIE_82003" }
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
		monsters = { 82001, 82004, 82007, 82008, 82010 },
		gadgets = { 82002, 82005, 82006, 82009, 82011, 82012, 82013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82003(context, evt)
	-- 将configid为 82002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82002, GadgetState.Default) then
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