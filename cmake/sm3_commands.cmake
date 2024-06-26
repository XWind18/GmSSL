execute_process(
	COMMAND bin/gmssl sm3 -in_str abc
	RESULT_VARIABLE TEST_RESULT
	ERROR_VARIABLE TEST_STDERR
	OUTPUT_VARIABLE TEST_OUTPUT
)

if(NOT ${TEST_RESULT} EQUAL 0)
	message(FATAL_ERROR "stderr: ${TEST_STDERR}")
endif()

if(NOT ${TEST_OUTPUT} STREQUAL "66c7f0f462eeedd9d1f2d46bdc10e4e24167c4875cf2f7a2297da02b8f4ba8e0\n")
	message(FATAL_ERROR "stdout: ${TEST_OUTPUT}")
endif()
