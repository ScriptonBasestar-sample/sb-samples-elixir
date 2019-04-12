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
        message1 = %KafkaEx.Protocol.Produce.Message{value: "value 1"}
        message2 = %KafkaEx.Protocol.Produce.Message{key: "key 2", value: "value 2"}
        messages = [message1, message2]
        #snappy
        produce_request = %KafkaEx.Protocol.Produce.Request{
            topic: "test_topic",
            partition: 0,
            required_acks: 1,
            compression: :snappy,
            messages: messages}
        KafkaEx.produce(produce_request)
        json conn, result
    end

    def sell(conn, _params) do
        result = %HelloApiWeb.OrderResult{
            uuid: Ecto.UUID.generate,
            success: true,
            order_type: "take_order",
            precheck_result: "success"
        }
        KafkaEx.produce("test_topic", 0, "hey")
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
