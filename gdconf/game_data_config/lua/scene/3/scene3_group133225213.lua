-- 基础信息
local base_info = {
	group_id = 133225213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 22050201, pos = { x = -6743.546, y = 204.367, z = -2695.431 }, rot = { x = 0.000, y = 32.334, z = 0.000 }, level = 32, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 213004, monster_id = 22040201, pos = { x = -6745.190, y = 204.775, z = -2687.623 }, rot = { x = 353.106, y = 225.102, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 213002, gadget_id = 70211012, pos = { x = -6743.313, y = 205.055, z = -2683.153 }, rot = { x = 0.000, y = 195.186, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1213003, name = "ANY_MONSTER_DIE_213003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213003", action = "action_EVENT_ANY_MONSTER_DIE_213003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 213005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6751.469, y = 203.657, z = -2693.397 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1213005, name = "ENTER_REGION_213005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		monsters = { 213001, 213004 },
		gadgets = { 213002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_213003" },
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
function condition_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 将configid为 213002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 213002, GadgetState.Default) then
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