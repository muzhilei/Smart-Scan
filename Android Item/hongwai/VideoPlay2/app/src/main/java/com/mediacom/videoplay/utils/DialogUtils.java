package com.mediacom.videoplay.utils;


import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

import com.winsat.gtshare.clearview.R;

public class DialogUtils extends android.app.Dialog implements View.OnClickListener{

    private TextView textView1,textView2,textView3,textView4;
    private String title,message,cancel,confirm;
    private OnCancelListener cancelListener;
    private OnConfirmListener confirmListener;


    public DialogUtils(Context context) {
        super(context);
    }

    public DialogUtils(Context context, int themeResId) {
        super(context, themeResId);
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setCancel(String cancel,OnCancelListener listener) {
        this.cancel = cancel;
        this.cancelListener=listener;
    }

    public void setConfirm(String confirm,OnConfirmListener listener) {
        this.confirm = confirm;
        this.confirmListener=listener;
    }


    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_manage);
        //设置宽度，固定代码
        WindowManager m=getWindow().getWindowManager();
        Display d=m.getDefaultDisplay();
        WindowManager.LayoutParams p=getWindow().getAttributes();
        Point size=new Point();
        d.getSize(size);
        p.width=(int)(size.x*0.6);//设置dialog的宽度为当前手机屏幕宽度*0.8
        getWindow().setAttributes(p);

        textView1= (TextView) findViewById(R.id.dialog_title);
        textView2= (TextView) findViewById(R.id.dialog_context);
        textView3= (TextView) findViewById(R.id.dialog_button_cancel);
        textView4= (TextView) findViewById(R.id.dialog_button_comfit);
        if(!TextUtils.isEmpty(title)){//不为空
            textView1.setText(title);
        }
        if(!TextUtils.isEmpty(message)){//不为空
            textView2.setText(message);
        }
        if(!TextUtils.isEmpty(cancel)){//不为空
            textView3.setText(cancel);
        }
        if(!TextUtils.isEmpty(confirm)){//不为空
            textView4.setText(confirm);
        }
        textView3.setOnClickListener(this);
        textView4.setOnClickListener(this);

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.dialog_button_cancel:
                if(cancelListener!=null){
                    cancelListener.onCancel(this);
                }
                dismiss();
                break;
            case R.id.dialog_button_comfit:
                if(confirmListener!=null){
                    confirmListener.onConfirm(this);
                }
                dismiss();
                break;
        }
    }

    public interface OnCancelListener{
        void onCancel(Dialog dialog);
    }

    public interface OnConfirmListener{
        void onConfirm(Dialog dialog);
    }
}