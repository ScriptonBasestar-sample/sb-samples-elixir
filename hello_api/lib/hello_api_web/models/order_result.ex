# web/models/order_result.ex
defmodule HelloApiWeb.OrderResult do
    defstruct [:uuid, :success, :order_type, :precheck_result]
end