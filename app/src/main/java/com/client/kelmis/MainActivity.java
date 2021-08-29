package com.client.kelmis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    ImageView imgPengaduan, ImgInfo;

    public static String basic_url = "http://10.0.2.2/kelmis_server/";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        imgPengaduan = findViewById(R.id.imgPengaduan);
        ImgInfo = findViewById(R.id.imgInfo);

        imgPengaduan.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                Intent i=new Intent(getBaseContext(), PengaduanActivity.class);
                startActivity(i);
            }
        });

        ImgInfo.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                Intent i=new Intent(getBaseContext(), InfoActivity.class);
                startActivity(i);
            }
        });
    }
}