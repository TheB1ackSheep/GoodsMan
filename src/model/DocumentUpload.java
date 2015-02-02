package model;

/**
 * Created by FALOOK on 12/23/2014.
 */
public class DocumentUpload {
    private long id;
    private String name;
    private String path;
    private String type;
    private ResponseMessage.MessageType result;
    private String msg;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public ResponseMessage.MessageType getResult() {
        return result;
    }

    public void setResult(ResponseMessage.MessageType result) {
        this.result = result;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
