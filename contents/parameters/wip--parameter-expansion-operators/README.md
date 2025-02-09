

### Parameter Expansion Operators

The operators `:=`, `:-`, `:?`, and `:+` are part of **parameter expansion** in bash, and they are commonly referred to as **parameter expansion operators** or **substitution operators**. Each of these operators serves a specific purpose in handling variables based on their status (set, unset, null). Here's a summary of each:

1. **`${parameter:=word}`**:
   - **Name**: Default Value Assignment
   - **Description**: Assigns `word` to `parameter` if `parameter` is unset or null, and then substitutes the value of `parameter`.
   - **Example**:
     ```bash
     unset myVar
     echo ${myVar:=default_value}
     echo $myVar
     ```
     Output:
     ```
     default_value
     default_value
     ```

2. **`${parameter:-word}`**:
   - **Name**: Default Value Substitution
   - **Description**: Substitutes `word` if `parameter` is unset or null, but does not assign it to `parameter`.
   - **Example**:
     ```bash
     unset myVar
     echo ${myVar:-default_value}
     echo $myVar
     ```
     Output:
     ```
     default_value
     
     ```

3. **`${parameter:?word}`**:
   - **Name**: Error Message and Exit
   - **Description**: Substitutes `word` and causes the shell to print an error message and exit if `parameter` is unset or null.
   - **Example**:
     ```bash
     unset myVar
     echo ${myVar:?error_message}
     ```
     Output:
     ```
     bash: myVar: error_message
     ```

4. **`${parameter:+word}`**:
   - **Name**: Conditional Substitution
   - **Description**: Substitutes `word` if `parameter` is set. If `parameter` is unset or null, it substitutes nothing.
   - **Example**:
     ```bash
     myVar=original_value
     echo ${myVar:+has_value}
     unset myVar
     echo ${myVar:+has_value}
     ```
     Output:
     ```
     has_value
     
     ```

### Summary

- **`:=`**: Default Value Assignment
- **`:-`**: Default Value Substitution
- **`:?`**: Error Message and Exit
- **`:+`**: Conditional Substitution

These operators are part of the broader category of parameter expansion in bash, which provides powerful ways to handle and manipulate variables based on their state.