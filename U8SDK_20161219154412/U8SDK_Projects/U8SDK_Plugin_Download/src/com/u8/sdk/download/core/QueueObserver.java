package com.u8.sdk.download.core;

/**
 * Created by Majid Golshadi on 4/22/2014.
 */
public interface QueueObserver {

    void wakeUp(int taskID);
}
