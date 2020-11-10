from talon import Context, Module, actions, clip, imgui, settings, ui

ctx = Context()

ctx.matches = r"""
mode: user.julia
mode: command
and code.language: julia
"""

ctx.lists["user.code_functions"] = {
    "abs": "abs",
        "all run": "allrun",
    "broadcast": "broadcast",
    "change": "cd",
    "collect": "collect",
    "conn as array": "connasarray",
    "copyto!": "copy",
    "copyto!": "copy to",
    "correlation": "cor",
        "cos": "cosine",
    "count": "count",
    "covariance": "cov",
        "deep copy": "deepcopy",
    "det": "debt",
    "diff": "diff",
    "diff": "difference",
    "display": "display",
    "dot": "dot",
    "each index": "eachindex",
       "eigen": "eigen",
    "ell type": "eltype",
    "enumerate": "enumerate",
    "figure": "figure",
    "Phil in place": "fill!",
    "Phil": "fill",
    "find all": "findall",
    "for each": "foreach",
    "get": "get",
    "hoe cat": "hcat",
    "imag": "imag",
    "include": "include",
    "is a prox": "isapprox",
    "isempty": "is empty",
    "last index": "lastindex",
    "len": "length",
    "length": "length",
    "log": "log",
    "max": "Moax",
    "maximum": "maximum",
    "mean": "mean",
    "min": "min",
    "minimum": "minimum",
    "norm": "nnorm",
    "one": "one",
    "open": "open",
    "open": "open",
    "fun": "phun",
    "plot": "plot",
    "print": "print",
    "print line": "println",
    "push!": "push",
    "rand": "random",
    "lynn space": "range",
    "range": "range",
    "round": "round",
    "real": "real",
    "reshape": "reshape",
    "scatter": "scatter",
    "similar": "similar",
    "sine": "sin",
    "cosine": "cos",
    "size,": "size",
    "sort": "sort",
    "squirt": "sqrt",
    "squeeze": "squeeze",
    "sub set": "subset",
    "subset": "subset",
    "sum": "sum",
    "time": "time",
    "time nano": "time_ns",
    "trace": "tr",
    "transpose": "transpose",
    "type of": "typeof",
    "unique": "unique",
    "vee cat": "vcat",
    "vec": "vec",
    "vector": "vec",
    "view": "view",
    "zero": "zero",
    "zip": "zip",
}



ctx.lists["user.code_libraries"] = {
    "linear algebra": "LinearAlgebra",
    "static arrays": "StaticArrays",
}


@ctx.action_class("user")
class user_actions:
    def code_insert_function(text: str, selection: str):
        if selection:
            text = text + "({})".format(selection)
        else:
            text = text + "()"
        actions.user.paste(text)
        actions.edit.left()

    # def code_private_function(text: str):
    #     result = "{} <- function () {{\n\n}}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_private_function_formatter")
    #         )
    #     )

    #     actions.user.paste(result)
    #     actions.edit.up()
    #     actions.edit.up()
    #     actions.edit.line_end()
    #     actions.edit.left()
    #     actions.edit.left()
    #     actions.edit.left()

    def code_insert_library(text: str, selection: str):
        actions.insert ("using ")
        actions.clip.set_text(text + "{}".format(selection))
        actions.edit.paste()
