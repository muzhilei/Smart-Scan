package com.example.sodemo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import com.example.sodemo.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'sodemo' library on application startup.
    static {
        System.loadLibrary("sodemo");
    }

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Example of a call to a native method
        TextView tv = binding.sampleText;
        tv.setText("kkkk ===" + stringFromJNI());
    }

    /**
     * A native method that is implemented by the 'sodemo' native library,
     * which is packaged with this application.
     */
    public native int stringFromJNI();
//    public native int getIntValue();
}