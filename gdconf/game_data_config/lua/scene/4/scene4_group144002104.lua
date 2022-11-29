-- 基础信息
local base_info = {
	group_id = 144002104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 21030301, pos = { x = 533.420, y = 120.497, z = -140.674 }, rot = { x = 0.000, y = 252.044, z = 0.000 }, level = 23, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 102 },
	{ config_id = 104004, monster_id = 21020201, pos = { x = 537.122, y = 120.574, z = -132.265 }, rot = { x = 0.000, y = 214.762, z = 0.000 }, level = 23, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 102 },
	{ config_id = 104005, monster_id = 21010701, pos = { x = 527.898, y = 120.213, z = -145.431 }, rot = { x = 0.911, y = 239.402, z = 1.541 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 102 },
	{ config_id = 104008, monster_id = 21011001, pos = { x = 523.588, y = 121.088, z = -133.906 }, rot = { x = 0.000, y = 41.830, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 102 },
	{ config_id = 104010, monster_id = 21010201, pos = { x = 515.047, y = 120.411, z = -142.319 }, rot = { x = 0.000, y = 258.332, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9011, area_id = 102 },
	{ config_id = 104013, monster_id = 21010901, pos = { x = 509.245, y = 123.833, z = -144.894 }, rot = { x = 0.000, y = 74.347, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104002, gadget_id = 70211012, pos = { x = 536.113, y = 121.785, z = -129.251 }, rot = { x = 349.509, y = 195.709, z = 19.604 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 104006, gadget_id = 70300089, pos = { x = 524.774, y = 120.007, z = -146.688 }, rot = { x = 0.000, y = 354.173, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 104007, gadget_id = 70300088, pos = { x = 529.013, y = 120.753, z = -129.501 }, rot = { x = 0.000, y = 129.039, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 104009, gadget_id = 70300088, pos = { x = 543.502, y = 119.965, z = -139.529 }, rot = { x = 0.000, y = 129.039, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 104011, gadget_id = 70950092, pos = { x = 508.668, y = 120.000, z = -144.819 }, rot = { x = 0.000, y = 33.972, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 104015, gadget_id = 70300085, pos = { x = 514.666, y = 119.886, z = -141.355 }, rot = { x = 357.332, y = 359.855, z = 6.242 }, level = 1, area_id = 102 },
	{ config_id = 104016, gadget_id = 70220005, pos = { x = 513.687, y = 120.074, z = -142.468 }, rot = { x = 357.332, y = 359.855, z = 6.242 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104003, name = "ANY_MONSTER_DIE_104003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104003", action = "action_EVENT_ANY_MONSTER_DIE_104003" }
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
		monsters = { 104001, 104004, 104005, 104008, 104010, 104013 },
		gadgets = { 104002, 104006, 104007, 104009, 104011, 104015, 104016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_104003" },
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
function condition_EVENT_ANY_MONSTER_DIE_104003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104003(context, evt)
	-- 将configid为 104002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104002, GadgetState.Default) then
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