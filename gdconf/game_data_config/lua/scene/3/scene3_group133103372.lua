-- 基础信息
local base_info = {
	group_id = 133103372
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 372001, monster_id = 21010501, pos = { x = 236.328, y = 235.541, z = 1025.831 }, rot = { x = 0.000, y = 318.768, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 372006, monster_id = 21010101, pos = { x = 230.271, y = 235.630, z = 1024.941 }, rot = { x = 0.000, y = 224.377, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 372007, monster_id = 21010101, pos = { x = 234.515, y = 237.117, z = 1015.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 372002, gadget_id = 70211012, pos = { x = 241.042, y = 235.617, z = 1020.043 }, rot = { x = 353.609, y = 289.333, z = 354.013 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 372008, gadget_id = 70310006, pos = { x = 234.894, y = 236.929, z = 1016.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 372009, gadget_id = 70300089, pos = { x = 232.633, y = 235.838, z = 1024.380 }, rot = { x = 12.340, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 372011, gadget_id = 70300088, pos = { x = 232.538, y = 234.686, z = 1030.195 }, rot = { x = 0.000, y = 61.958, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 372013, gadget_id = 70220013, pos = { x = 232.523, y = 237.156, z = 1018.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372003, name = "ANY_MONSTER_DIE_372003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_372003", action = "action_EVENT_ANY_MONSTER_DIE_372003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 372017, gadget_id = 70220025, pos = { x = 239.879, y = 235.647, z = 1022.589 }, rot = { x = 275.313, y = 92.478, z = 270.000 }, level = 19, area_id = 6 }
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
		monsters = { 372001, 372006, 372007 },
		gadgets = { 372002, 372008, 372009, 372011, 372013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_372003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_372003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_372003(context, evt)
	-- 将configid为 372002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372002, GadgetState.Default) then
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