--这个是雷鸟小像的主Group，用来管理子Group的刷新
--[[

defs = {
	group_id = 111101220,	--当前Group的ID
	isRandom = false,--定义这个组是否会随机取
	child_group = {[111101219] = 2}, --groupid和需要切到的SuiteID，一一对应
	notifyQuest = true, --修改Group里一个变量
	hasChild = false, --表示是否有子Group，true表示有
	selfSuiteId = 2, --需要切的自己的suite
	hasMultiStatues = false, --是否有多个雷鸟雕像
	statuesMap = 
	{
		[config_id] = suite_id, --雷鸟雕像和需要切出来的Suite的对应表
	},
}
]]

--雷鸟小像执行的SLC，调用此SLC来刷新对应的Group
--子Group在场上处于空Suite的隐藏状态，在收到SLC时发消息给子Group切换suite
--每个子Group配置一个变量Finished
local Triggers_TBird = {
	[1] = { name = "group_load", config_id = 9000101, event = EventType.EVENT_GROUP_LOAD, source = "",condition = "",action = "action_group_load",trigger_count= 0},
	[2] = { name = "group_will_unload", config_id = 9000102, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "",condition = "",action = "action_group_will_unload",trigger_count= 0},
}

--按羽毛时发过来的SLC，根据DEFS内的配置进行客制化的操作
function SLC_CallTsurumiGroup(context)
	ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : Receive_SLC")
	--拿到发消息的雕像的id
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	--如果需要通知任务就改Group里的变量，1的时候就不再改变
	if defs.notifyQuest == true then
		if 0 ~= ScriptLib.GetGroupVariableValueByGroup(context, "Notified", defs.group_id) then
			ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : Has_Notified")
			return -1
		end
		--改这个变量然后LD监听
		ScriptLib.SetGroupVariableValue(context, "Notified", 1)
		ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : Set_Notified")
	end

	--走到刷新Suite
	--检查自己有没有子Group，有就走刷新逻辑
	if defs.hasChild == true then
		GotoRandomSuiteByDay(context)
	else
	--刷自己的子GroupSuite
		if defs.hasMultiStatues == false then
			ScriptLib.AddExtraGroupSuite(context,defs.group_id, defs.selfSuiteId)
		else
	--group里有多个雷鸟雕像，刷雕像对应的Suite
			for cfg_id,suite_id in pairs(defs.statuesMap) do
				if cfg_id == config_id then
					ScriptLib.AddExtraGroupSuite(context,defs.group_id, suite_id)
					return 0
				end
			end
		end
	end
	return 0
end

--需要随机一个Suite的时候走这个
function GotoRandomSuiteByDay( context )
	ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : Start_Goto_Suite")
	--拿到Group里的标记变量，确认当前没有刷新Group或者切换Suite
	if 0 ~= ScriptLib.GetGroupTempValue(context, "HasRefreshed", {}) then
		return -1
	end
	local child_unfinshed = {}
	--这里写一个For循环拿到子group的状态
	for child_id,suite_id in pairs(defs.child_group) do
		--把Group不是完成状态的子Group加进去
		local child_state = ScriptLib.GetGroupVariableValueByGroup(context, "Finished", child_id)
		--完成的Group会将自己的值置为1
		if child_state ~= 1 then
			table.insert(child_unfinshed, child_id)
		end
	end
	--如果子Group是空的那么就表示全部完成，直接返回
	if #child_unfinshed == 0 then
		ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : NULL_CHILD")
		return -1
	end
	--计算种子的奇偶性来判断是否刷新，可能需要弹消息
	--这里拿到当天更新的随机种子，通过种子对Group取余，获得今天刷新的Group
	--每天只会刷新一个Group，那么需要一个东西来记录今天已经有Group完成过了，
	--每天的随机种子同步，当种子是偶数时代表今天的未完成可以刷新，当种子是奇数时表示今天的已经完成了，不再刷新
	local seed = ScriptLib.GetGroupVariableValue(context, "Seed")
	ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : SEED_"..seed)
	if seed%2 ~= 0 then
		return -1
	end
	--拿到未完成的Group长度
	local length = #child_unfinshed
	--拿到今天刷新的Group的ID
	local index = seed%length + 1
	local child_group_id = child_unfinshed[index]
	local child_suite_id = defs.child_group[child_group_id] 
--[[	
	local isStoneSeq = ScriptLib.GetGroupVariableValueByGroup(context, "TsurumiStone", child_group_id)
	local isPillarMove = ScriptLib.GetGroupVariableValueByGroup(context, "isPillarMove", child_group_id)
	--如果不是符文石组
	if 0 == isStoneSeq then
	--拿到今天需要刷新的Group，给这个Group发一个消息，来切换Group的Suite
		ScriptLib.AddExtraGroupSuite(context,child_group_id,child_suite_id)
		ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : CHILD_GROUP_"..child_group_id.."_SUITE_"..child_suite_id)
	else
		if 0 == isPillarMove then
			--切子Group的变量来控制刷新
			ScriptLib.SetGroupVariableValueByGroup(context, "TsurumiStone", isStoneSeq+1, child_group_id)
			ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : CHILD_GROUP_STONE_"..child_group_id.."_SUITE_")
		else 
			--切子Group的变量来控制刷新
			ScriptLib.SetGroupVariableValueByGroup(context, "isPillarMove", isStoneSeq+1, child_group_id)
			ScriptLib.PrintContextLog(context, "@@ LUA_Tsurumi : CHILD_GROUP_STONE_"..child_group_id.."_SUITE_")
		end
	end
]]--
	local isNeedNotify = ScriptLib.GetGroupVariableValueByGroup(context, "isNeedNotify", child_group_id)
	--如果是不需要通知的，就直接切Suite2
	if isNeedNotify == 0 then
		ScriptLib.AddExtraGroupSuite(context,child_group_id,child_suite_id)
	else
	--如果是需要通知的，就改变量发消息
		ScriptLib.SetGroupVariableValueByGroup(context, "isNeedNotify", isNeedNotify+1, child_group_id)
	end
	--标记现在已经切过Suite
	ScriptLib.SetGroupTempValue(context, "HasRefreshed", 1, {})
	return 0
end


--Group每天自然刷新获取一个固定的随机数
function action_group_load( context, evt )
	--Group是否是自然刷新，自然刷新则重置随机数
	--在Group加载时标记一个临时变量，保证不会重复切换子Group的Suite
	ScriptLib.SetGroupTempValue(context, "HasRefreshed", 0, {})
	ScriptLib.SetGroupVariableValue(context, "Notified", 0)
	--如果不是自然刷新就直接返回，不更新今天的种子
	if evt.param1 ~= 1 then
		return -1
	end
	--每天自然刷新的时候更新Group里的随机数，保证每天刷新的Group是同一个，这是一个Persistent的GroupVariable
	--自然刷新的随机数是一个整数偶数
	local GenerateSeed = os.time()
	if GenerateSeed%2 ~=0 then
		GenerateSeed = GenerateSeed + 1
	end
	--更新今天的种子
	ScriptLib.SetGroupVariableValue(context, "Seed", GenerateSeed)
	return 0
end


function action_group_will_unload(context, evt)
	--Group在卸载的时候重置任务通知标记
	ScriptLib.SetGroupVariableValue(context, "Notified", 0)
	--Group在卸载的时候重置标记
	ScriptLib.SetGroupTempValue(context, "HasRefreshed", 0, {})
	return 0
end


--给每个suite塞触发器
function Initialize_TB()
	for k,v in pairs(Triggers_TBird) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

Initialize_TB()