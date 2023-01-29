-- 基础信息
local base_info = {
	group_id = 133307148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 25210203, pos = { x = -1488.295, y = 14.717, z = 5417.865 }, rot = { x = 0.000, y = 99.451, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 32 },
	{ config_id = 148004, monster_id = 25210403, pos = { x = -1494.004, y = 11.454, z = 5447.121 }, rot = { x = 0.000, y = 278.670, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9511, area_id = 32 },
	{ config_id = 148006, monster_id = 25210301, pos = { x = -1496.672, y = 11.454, z = 5447.928 }, rot = { x = 0.000, y = 117.776, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 32 },
	{ config_id = 148008, monster_id = 25210303, pos = { x = -1491.861, y = 14.862, z = 5424.055 }, rot = { x = 0.000, y = 76.552, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9505, area_id = 32 },
	{ config_id = 148010, monster_id = 25210502, pos = { x = -1481.186, y = -0.887, z = 5458.944 }, rot = { x = 0.000, y = 127.768, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148002, gadget_id = 70211012, pos = { x = -1487.118, y = 11.329, z = 5443.786 }, rot = { x = 0.000, y = 289.445, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 148005, gadget_id = 70220128, pos = { x = -1495.447, y = 11.331, z = 5447.292 }, rot = { x = 0.000, y = 18.334, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148003, name = "ANY_MONSTER_DIE_148003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148003", action = "action_EVENT_ANY_MONSTER_DIE_148003" }
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
		monsters = { 148004, 148006, 148008, 148010 },
		gadgets = { 148002, 148005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 148001 },
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
function condition_EVENT_ANY_MONSTER_DIE_148003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148003(context, evt)
	-- 将configid为 148002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end