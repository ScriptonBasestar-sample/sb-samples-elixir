import Ecto
defmodule HelloApiWeb.OrderController do
    use HelloApiWeb, :controller

    def index(conn, _params) do
        render conn, "index.html"
    end

    def buy(conn, _params) do
        result = %HelloApiWeb.OrderResult{
            uuid: Ecto.UUID.generate,
            success: true,
            order_type: "make_order",
            precheck_result: "success"
        }
        json conn, result
    end

    def sell(conn, _params) do
        result = %HelloApiWeb.OrderResult{
            uuid: Ecto.UUID.generate,
            success: true,
            order_type: "take_order",
            precheck_result: "success"
        }
        json conn, result
    end

    def cancel(conn, _params) do
        result = %HelloApiWeb.OrderResult{
            uuid: Ecto.UUID.generate,
            success: true,
            order_type: "cancel",
            precheck_result: "success"
        }
    end
end
