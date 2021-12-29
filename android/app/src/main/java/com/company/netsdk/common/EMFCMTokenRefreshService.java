package com.company.netsdk.common;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.company.netsdk.R;
import com.company.netsdk.activity.MainActivity;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;

public class EMFCMTokenRefreshService extends FirebaseInstanceIdService {
    private static final String TAG = "FCMTokenRefreshService";
    private static String strRegisterId;
    @Override
    public void onTokenRefresh() {
        super.onTokenRefresh();
        String registerId = FirebaseInstanceId.getInstance().getToken();
        Log.i(TAG, "onTokenRefresh: " + registerId);
        strRegisterId = registerId;
    }
}