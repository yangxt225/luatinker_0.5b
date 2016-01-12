--
-------------------------------------------------------------------------------
function temp_call(arg1, arg2)
	return arg1 + arg2
end
-------------------------------------------------------------------------------
function add_number(arg1, arg2)
	return arg1 + arg2
end
-------------------------------------------------------------------------------
function test_table(arg)

	print(arg)
	print(arg.value)
	print(arg.inside)
	print(arg.inside.value)
	
	arg.test = "input from lua"
	
end
-------------------------------------------------------------------------------
function raise_error()

	raise_error_1()
end

function raise_error_1()

	raise_error_2()
end

function raise_error_2()

	-- calling unknwon funtion
	-- error occur and callstack is generated
	raise_error_3()
end

-------------------------------------------------------------------------------

print(g_test)					-- ���� g_test �� ����Ѵ�
print(g_test._test)				-- ���� g_test �� ��� ���� _test �� ����Ѵ�
print(g_test:is_test())			-- const char* test::is_test() �Լ��� ȣ���Ѵ�
print(g_test:ret_int())			-- test::ret_int() �Լ��� ȣ���Ѵ�
temp = test(4)					-- temp �� �� test ��ü�� �ִ´�
print(temp._test)				-- test �� ��� ���� _test ���� ����Ѵ�
a = g_test:get()				-- lua ���� ���ǵ��� ���� A�� ����
temp:set(a)						-- A �� g_test �� ����
print(temp._test)				-- A �� �Ѱ� �������� _test ���� ����
print(temp:is_base())			-- �θ��� �Լ� ȣ��
print(temp:is_test())			-- �ڽ��� �Լ� ȣ��
parent = GetChild(0)			-- �θ� �޴´�
print("--------------------------")
dir(parent)						-- parent �� ������ ����Ѵ�
child = GetChild(1)				-- �ڽ��� �޴´�
print("--------------------------")
dir(child)						-- child �� ������ ����Ѵ�
grandchild = GetChild(2)		-- ���ڸ� �޴´�
print("--------------------------")
dir(grandchild)					-- grandchild �� ������ ����Ѵ�

