package model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Created by FALOOK on 12/21/2014.
 */

public class ResponseMessage {
    public enum MessageType{
        SUCCESS,ERROR,INVALID,FAILED
    }
    private MessageType result;
    private Object msg;

    public MessageType getResult() {
        return result;
    }

    public void setResult(MessageType result) {
        this.result = result;
    }

    public Object getMsg() {
        return msg;
    }

    public void setMsg(Object msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        Gson gson = new GsonBuilder().create();
        return gson.toJson(this);
    }

    public String toJSON(){
        return this.toString();
    }
}
