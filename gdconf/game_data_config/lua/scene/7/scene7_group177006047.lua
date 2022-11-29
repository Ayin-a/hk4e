-- 基础信息
local base_info = {
	group_id = 177006047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 22050101, pos = { x = 181.012, y = 192.760, z = -309.746 }, rot = { x = 0.000, y = 195.420, z = 0.000 }, level = 36, drop_tag = "兽境猎犬", disableWander = true, affix = { 5135, 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 47004, monster_id = 22040101, pos = { x = 185.830, y = 192.760, z = -312.709 }, rot = { x = 0.000, y = 261.956, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", affix = { 5135, 1006 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47002, gadget_id = 70211157, pos = { x = 181.041, y = 192.778, z = -316.717 }, rot = { x = 0.000, y = 40.323, z = 0.000 }, level = 26, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047003, name = "ANY_MONSTER_DIE_47003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47003", action = "action_EVENT_ANY_MONSTER_DIE_47003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 47005, monster_id = 22040101, pos = { x = 186.655, y = 192.760, z = -319.560 }, rot = { x = 0.000, y = 262.972, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", affix = { 5135, 1006 }, pose_id = 101, area_id = 210 }
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
		monsters = { 47001, 47004 },
		gadgets = { 47002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 将configid为 47002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47002, GadgetState.Default) then
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