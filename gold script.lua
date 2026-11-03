--gold script

--if there is no gold variable then create one
if gold == nil then
	gold = 0
end

--check gold 
function gold_check()
	print("your total gold is " .. gold)
end

--add gold input system
function gold_add(gold_input)
	gold_input_number = tonumber(gold_input)
	do_gold_add()
end

--add gold function
function do_gold_add()
	if gold_input_number == nil then
		print("the input is not a number")
	else
		gold = gold + gold_input_number
		print("successfully added " .. gold_input_number .. " to your gold your total gold. is now " .. gold)
	end
end

--delete gold input system
function gold_delete(gold_input)
	gold_input_number = tonumber(gold_input)
	if gold_input_number <= gold then
		do_gold_delete()
	else
		print("you do not have enough gold to delete that amount")
		can_use_confirm = true
	end
end

--delete gold function
function do_gold_delete()
	if gold_input_number == nil then
		print("the input is not a number")
	else
		gold = gold - gold_input_number
		print("successfully deleted " .. gold_input_number .. " from your gold. your total gold is now " .. gold)
	end
end

--reset gold function
function gold_reset()
	confirm_gold_reset = true
	print("please type confirm() to confirm the gold reset")
	can_use_confirm = true
end

--conirm function
function confirm()
	if can_use_confirm == true then
		if confirm_gold_reset == true then
			gold = 0
			print("successfully reset your gold to 0")
			confirm_gold_reset = false
			can_use_confirm = false
		end
		if confirm_gold_go_negative == true then
			gold = gold - gold_input_number
			print("successfully deleted " .. gold_input_number .. " from your gold. your total gold is now " .. gold)
			confirm_gold_go_negative = false
			can_use_confirm = false
		end
		else
			print("there is nothing to confirm")
	end
end

--help function
function help()
	print("gold_check() - check your total gold")
	print("gold_add(gold_input) - add gold to your total gold")
	print("gold_delete(gold_input) - delete gold from your total gold")
	print("gold_reset() - reset your total gold to 0")
	print("confirm() - confirm a gold reset or going into negative gold")
	print("if you want to go into - then please confirm with the confirm() function")
end
