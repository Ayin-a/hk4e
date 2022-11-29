--[[digMaps={
	[1]={
		{1,0,0,1,0},
		{0,0,1,2,1},
		{1,0,0,1,0},
		{0,0,0,1,0},
		{1,0,0,0,0},
	},
	[2]={
		{1,0,0,1,0},
		{0,0,1,2,1},
		{1,0,0,1,0},
		{0,0,0,1,0},
		{1,0,0,0,0},
	},
	[3]={
		{1,0,0,1,0},
		{0,0,1,2,1},
		{1,0,0,1,0},
		{0,0,0,1,0},
		{1,0,0,0,0},
	},
}]]--

local extraTriggers={
  { config_id = 8000001, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
  { config_id = 8000002, name = "VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "PlayStartTrigger", condition = "", action = "action_VARIABLE_CHANGE", trigger_count = 0},
  { config_id = 8000003, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_SELECT_OPTION", trigger_count = 0},
  { config_id = 8000004, name = "GADGET_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GADGET_STATE_CHANGE", trigger_count = 0},
  { config_id = 8000005, name = "EVENT_LUA_NOTIFY", event = EventType.EVENT_LUA_NOTIFY, source = "BombDie", condition = "", action = "action_LUA_NOTIFY", trigger_count = 0},
  { config_id = 8000006, name = "VARIABLE_CHANGE_Reset", event = EventType.EVENT_VARIABLE_CHANGE, source = "PlayResetTrigger", condition = "", action = "action_VARIABLE_CHANGE_RESET", trigger_count = 0},
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables, { config_id=50000001,name = "PlayStartTrigger", value = 0,no_refresh = false})
	table.insert(variables, { config_id=50000002,name = "PlayResetTrigger", value = 0,no_refresh = false})
	table.insert(variables, { config_id=50000003,name = "SuccessTrigger", value = 0,no_refresh = false})
	table.insert(variables, { config_id=50000004,name = "FailTrigger", value = 0,no_refresh = false})
	table.insert(variables, { config_id=50000005,name = "PlayStep", value = 0,no_refresh = true})
	table.insert(variables, { config_id=50000006,name = "TreasureBoxPos", value = 0,no_refresh = true})
	table.insert(variables, { config_id=50000007,name = "Strategy", value = 0,no_refresh = true})
	table.insert(variables, { config_id=50000008,name = "Playing", value = 0,no_refresh = true})
end

--[[
PlayStep:
0：一阶段玩法未完成
1：一阶段玩法完成宝箱未领取
2：二阶段玩法未完成
3：二阶段玩法完成宝箱未领取
4：三阶段玩法未完成
5：三阶段玩法完成宝箱未领取
6：全部玩法完成
]]--

-----------------------------EventActions-----------------------------------------
--炸药桶被打爆后，会给一个reminder
function action_LUA_NOTIFY(context, evt)
	if not(defs.is_quest_group==1) then
		ScriptLib.ShowReminder(context, 310645006)
	end
	return 0
end
--如果宝箱未被领取，则group创建时恢复宝箱和位置
function action_EVENT_GROUP_LOAD(context, evt)
	local playStep=	ScriptLib.GetGroupVariableValue(context, "PlayStep")
	--如果宝箱还未领，创建宝箱
	if playStep==1 or playStep==3 or playStep==5 then
		local treasureBoxPos=ScriptLib.GetGroupVariableValue(context, "TreasureBoxPos")
		--找到宝箱创建位置
		local configID=defs["gadget_"..treasureBoxPos]
		for i=1,#gadgets do
			if gadgets[i].config_id==configID then
				local treasureBoxID=(playStep+1)/2
				treasureBoxID=math.floor(treasureBoxID)
				if defs["treasurebox_"..treasureBoxID]~=nil then
					ScriptLib.PrintContextLog(context,"DigPlayLog:load treasurebox pos:"..gadgets[i].pos.x.."|"..gadgets[i].pos.y.."|"..gadgets[i].pos.z)
					ScriptLib.CreateGadgetByConfigIdByPos(context, defs["treasurebox_"..treasureBoxID], gadgets[i].pos, gadgets[i].rot)
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, configID, 203)
				else
					ScriptLib.PrintContextLog(context,"DigPlayError:load treasurebox index failed")
				end
				break
			end
		end
		return 0
	end
	--如果玩法还在继续，则恢复之前的状态
  local isPlaying =	ScriptLib.GetGroupVariableValue(context, "Playing")
  if isPlaying==1 then
  	AddOptions(context)
  end
	return 0
end

--宝箱开启后推进流程
function action_GADGET_STATE_CHANGE(context, evt)
	if evt.param1==102 then
		local playStep=	ScriptLib.GetGroupVariableValue(context, "PlayStep")
		playStep=playStep+1
		ScriptLib.SetGroupVariableValue(context, "PlayStep", playStep)
	end
	return 0
end

--group主动任务触发玩法开始
function action_VARIABLE_CHANGE(context, evt)
	--复原物件
	ResetHoles(context)
	--记录正在游玩状态
	ScriptLib.SetGroupVariableValue(context, "Playing", 1)
	ScriptLib.SetGroupVariableValue(context, "Strategy", 0)
  AddOptions(context)
	return 0
end

--group任务触发玩法结束
function action_VARIABLE_CHANGE_RESET(context, evt)
	--复原物件
	ResetHoles(context)
	EndGame(context)
	--复原正在游玩状态
	ScriptLib.SetGroupVariableValue(context, "Playing", 0)
	ScriptLib.SetGroupVariableValue(context, "Strategy", 0)
	--把宝箱干掉并回退playstep
	local playStep =	ScriptLib.GetGroupVariableValue(context, "PlayStep")
	if playStep==1 then
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs["treasurebox_"..1])
	elseif playStep==3 then
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs["treasurebox_"..2])
	elseif playStep==5 then
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs["treasurebox_"..3])
	end

	if playStep==1 or playStep==3 or playStep==5 then
		playStep=playStep-1
		ScriptLib.SetGroupVariableValue(context, "PlayStep", playStep)
	end

	return 0
end

function action_SELECT_OPTION(context, evt)
	if evt.param2~=99 then
		return 0
	end
	local strategy=ScriptLib.GetGroupVariableValue(context, "Strategy")

  --strategy为0则说明是第一次挖，此时尽可能随机一个挖掘处不是炸弹的strategy
	if strategy<=0 or strategy==nil then
		strategy=LF_InitialStrategy(context,evt)
	end

	ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, evt.param2)
	--查询如果是地雷或宝箱，结束玩法
	for k,v in pairs(defs) do
		if v==evt.param1 then
			local tempIdx=string.sub(k,#k-1)
			tempIdx=tonumber(tempIdx)
			local digNum=digMaps[strategy][math.floor(tempIdx/10)][tempIdx%10]
			--挖到炸弹
			if digNum==1 then
				--提示
				if not(defs.is_quest_group==1) then
					ScriptLib.ShowReminder(context, 310645005)
				end
				--如果是任务的group，则只播放reminder而不结束游戏
				if defs.is_quest_group==1 then
					if defs.reminder_id~=nil then
						ScriptLib.ShowReminder(context, defs.reminder_id)
					end
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 204)
				else
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 204)
					--给group发送玩法失败消息
					ScriptLib.ChangeGroupVariableValue(context, "FailTrigger", 1)
					EndGame(context)
				end
			--挖到宝箱
			elseif digNum==2 then
				--保存宝箱位置
				ScriptLib.SetGroupVariableValue(context, "TreasureBoxPos", tempIdx)
				--增加关卡进度
				local playStep =	ScriptLib.GetGroupVariableValue(context, "PlayStep")
				playStep=playStep+1
				ScriptLib.SetGroupVariableValue(context, "PlayStep", playStep)
				--创建宝箱
				for i=1,#gadgets do
					if gadgets[i].config_id==evt.param1 then
						local treasureBoxID=(playStep+1)/2
						treasureBoxID=math.floor(treasureBoxID)
						--挖到宝箱后说一句话，纯表现
						if not(defs.is_quest_group==1) then
						  local reminderId=310645001+treasureBoxID
						  ScriptLib.ShowReminder(context, reminderId)
						end

						ScriptLib.PrintContextLog(context,"DigPlayLog:treasureBoxID:"..treasureBoxID)
						ScriptLib.PrintContextLog(context,"DigPlayLog:treasureBoxID:"..treasureBoxID.."|"..defs["treasurebox_"..treasureBoxID])
						if defs["treasurebox_"..treasureBoxID]~=nil then
							ScriptLib.CreateGadgetByConfigIdByPos(context, defs["treasurebox_"..treasureBoxID], gadgets[i].pos, gadgets[i].rot)
							ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 203)
						else
							ScriptLib.PrintContextLog(context,"DigPlayError:get treasurebox index failed")
						end
						break
					end
				end
				--给group发送玩法成功消息
				ScriptLib.ChangeGroupVariableValue(context, "SuccessTrigger", 1)
				--结束玩法
				EndGame(context)
      --挖到物品
			else
				local bombNum=0
				--计算目标位置周围有几个雷
				local ti=math.floor(tempIdx/10)
				local tj=tempIdx%10
				for i=(ti>1 and ti-1 or ti),(ti<5 and ti+1 or ti) do
					for j=(tj>1 and tj-1 or tj),(tj<5 and tj+1 or tj) do
						if digMaps[strategy][i][j]==1 then
							if not (math.abs(i-ti)>=1 and math.abs(j-tj)>=1) then
								bombNum=bombNum+1
							end
						end
					end
				end
				ScriptLib.PrintContextLog(context,"## [DigPlay] Log : arround bomb num:"..bombNum)
				--根据雷数切换状态
				if bombNum==0 or bombNum>3 then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 205)
				elseif bombNum==1 then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 201)
				elseif bombNum==2 or bombNum==3 then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 202)
				end
			end
		end
	end
 	return 0
end

function EndGame(context)
	for i=1,5 do
		for j=1,5 do
			tempIdx=i*10+j
			ScriptLib.DelWorktopOptionByGroupId(context, 0, defs["gadget_"..tempIdx], 99)
		end
	end
	ScriptLib.SetGroupVariableValue(context, "Playing", 0)
	return 0
end

function AddOptions(context)
  local tempIdx=0
	for i=1,5 do
		for j=1,5 do
			tempIdx=i*10+j
			if ScriptLib.GetGadgetStateByConfigId(context, 0, defs["gadget_"..tempIdx])==0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, defs["gadget_"..tempIdx], {99})
			end
		end
	end
	return 0
end

function ResetHoles(context)
  local tempIdx=0
	for i=1,5 do
		for j=1,5 do
			tempIdx=i*10+j
			if ScriptLib.GetGadgetStateByConfigId(context, 0, defs["gadget_"..tempIdx])~=0 then
				ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs["gadget_"..tempIdx], 0)
			end
		end
	end
	return 0
end

function LF_InitialStrategy(context,evt)
	--标志在前半遍历是否找到合适的strategy
	local firstHalf=0
	math.randomseed(ScriptLib.GetServerTime(context))
	--先随一次
	local tempStrategy=math.random(#digMaps)
  for k,v in pairs(defs) do
		if v==evt.param1 then
			local tempIdx=string.sub(k,#k-1)
			tempIdx=tonumber(tempIdx)
			local digNum=digMaps[tempStrategy][math.floor(tempIdx/10)][tempIdx%10]
			--如果首次挖到的位置是炸弹
			if digNum==1 then
				ScriptLib.PrintContextLog(context,"## [DigPlay] Log : 第一次随机策略随到了雷:"..tempStrategy)
				--从随机位置开始顺序遍历table直到找到第一个不是炸弹的配置，找不到则按原来的结果输出
				for i=tempStrategy,#digMaps do
					if digMaps[i][math.floor(tempIdx/10)][tempIdx%10]~=1 then
						tempStrategy=i
						firstHalf=1
						break
					end
				end
				if firstHalf==0 then
						for i=1,tempStrategy do 
							if digMaps[i][math.floor(tempIdx/10)][tempIdx%10]~=1 then
								tempStrategy=i
								break
							end
						end
				end
			end
		end
	end
	ScriptLib.SetGroupVariableValue(context, "Strategy", 	tempStrategy)
	ScriptLib.PrintContextLog(context,"## [DigPlay] Log : 随机策略最后的输出策略:"..tempStrategy)
	return tempStrategy
end

LF_Initialize_Group(triggers, suites)