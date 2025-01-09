(
    (
        (infix_expression
			left: (infix_expression
            	operator: (identifier) @_operator.left.name
                right: (string) @test_name
            ) @run
            operator: (identifier) @_operator.right.name
		)
        (#eq? @_operator.left.name "should")
        (#eq? @_operator.right.name "in")
    )
    (#set! tag scala-test-case)
)

(
    (
        (infix_expression
			left: (identifier) @run
            operator: (identifier) @_operator.name
            right: (string) @test_name
		)
        (#eq? @_operator.name "of")
        (#eq? @run "behavior")
    )
    (#set! tag scala-test-case)
)

  {
    "label": "my test",
    "command": "printenv | rg ZED",
    "tags": ["scala-test-case"],
    "show_command": true,
    "show_summary": true,
    "reveal": "always",
    "hide": "never"
  },
  {
    "label": "main",
    "command": "printenv | rg ZED",
    "tags": ["scala-main"],
    "show_command": true,
    "show_summary": true,
    "reveal": "always",
    "hide": "never"
  }
