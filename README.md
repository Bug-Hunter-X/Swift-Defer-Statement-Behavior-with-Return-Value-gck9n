# Swift Defer Statement Gotcha
This repo demonstrates a subtle issue related to the `defer` statement in Swift. The example shows that while `defer` blocks execute after the function's return statement, they do not affect the returned value if that value is a local variable whose scope is ended by the return statement.

## Problem
The `myFunc` function intends to increment the value of `x` before returning. However, the `defer` block's modification of `x` has no impact on the final result, yielding a counter-intuitive outcome.