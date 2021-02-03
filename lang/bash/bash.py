from talon import Context, Module, actions, settings

mod = Module()
ctx = Context()


@ctx.action_class("user")
class user_actions:
    def code_public_function(text: str):
        formatted_text = actions.user.formatted_text(text, "SNAKE_CASE")
        result = f"{formatted_text}() {{\n\n}}"
        actions.user.paste(result)
        actions.edit.up()
        actions.key("tab")

@mod.action_class
class module_actions:
    def code_variable(text: str):
        """ variable value in braces """
        formatted_text = actions.user.formatted_text(text, "SNAKE_CASE")
        result = f"${{{formatted_text}}}"
        actions.user.paste(result)
