-- 基础信息
local base_info = {
	group_id = 133310380
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 380001, monster_id = 25210501, pos = { x = -2108.508, y = 139.855, z = 4975.994 }, rot = { x = 0.000, y = 252.700, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 27 },
	{ config_id = 380004, monster_id = 25210201, pos = { x = -2128.987, y = 150.848, z = 4984.000 }, rot = { x = 0.000, y = 136.544, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 380008, monster_id = 25210302, pos = { x = -2125.444, y = 141.377, z = 4977.952 }, rot = { x = 0.000, y = 208.816, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 27 },
	{ config_id = 380009, monster_id = 25310301, pos = { x = -2123.590, y = 140.710, z = 4975.188 }, rot = { x = 0.000, y = 178.982, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 27 },
	{ config_id = 380011, monster_id = 25210403, pos = { x = -2124.144, y = 138.564, z = 4972.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 380002, gadget_id = 70211002, pos = { x = -2123.154, y = 143.083, z = 4977.846 }, rot = { x = 0.664, y = 205.514, z = 10.599 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 380005, gadget_id = 70330397, pos = { x = -2138.293, y = 144.794, z = 4981.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 380006, gadget_id = 70330397, pos = { x = -2100.300, y = 148.648, z = 4986.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 380007, gadget_id = 70220103, pos = { x = -2116.888, y = 153.178, z = 4979.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 380010, gadget_id = 70310006, pos = { x = -2123.168, y = 151.138, z = 4985.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1380003, name = "ANY_MONSTER_DIE_380003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_380003", action = "action_EVENT_ANY_MONSTER_DIE_380003" }
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
		monsters = { 380001, 380004, 380008, 380009, 380011 },
		gadgets = { 380002, 380005, 380006, 380007, 380010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_380003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_380003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_380003(context, evt)
	-- 将configid为 380002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380002, GadgetState.Default) then
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