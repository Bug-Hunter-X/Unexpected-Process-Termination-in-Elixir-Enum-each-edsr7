# Elixir - Unexpected Process Termination in Enum.each

This repository demonstrates a common error in Elixir: Unexpected process termination using `Enum.each` and `Process.exit`.  The code abruptly stops the process when it encounters a specific element in the list, which can be problematic in applications where continuous operation is required.

The `bug.ex` file contains the erroneous code.  The `bugSolution.ex` file provides a safer and more reliable alternative that handles the termination condition gracefully.

**Key takeaway:** Avoid using `Process.exit` within `Enum.each` unless you are very certain it's the desired behavior and have handled potential ramifications.  Prefer alternatives like `Enum.reduce` or error handling mechanisms that don't abruptly halt your process.