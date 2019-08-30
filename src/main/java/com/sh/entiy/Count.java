package com.sh.entiy;

import java.util.HashMap;

public class Count extends HashMap<String,Integer> {
    //电话营销
    private int source_tel;

    //网络营销
    private int source_net;

    private int industry_edu;

    private int industry_trace;

    private int industry_sw;

    private int industry_trip;

    private int industry_house;

    @Override
    public String toString() {
        return "Count{" +
                "source_tel=" + source_tel +
                ", source_net=" + source_net +
                ", industry_edu=" + industry_edu +
                ", industry_trace=" + industry_trace +
                ", industry_sw=" + industry_sw +
                ", industry_trip=" + industry_trip +
                ", industry_house=" + industry_house +
                '}';
    }


}
