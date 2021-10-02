package com.client.kelmis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class KonfirmasiPengaduanActivity extends AppCompatActivity {

    TextView TVnama, TValamat, TVtelp, TVnopel;
    Button btnBack;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_konfirmasi_pengaduan);

        TVnama = findViewById(R.id.txtNamaConfirm);
        TValamat = findViewById(R.id.txtAlamatConfirm);
        TVtelp = findViewById(R.id.txtNoTelpConfirm);
        TVnopel = findViewById(R.id.txtNoPelConfirm);
        btnBack = findViewById(R.id.btnBackConfirm);

        String strNama = getIntent().getStringExtra("nama");
        String strAlamat = getIntent().getStringExtra("alamat");
        String strNoTelp = getIntent().getStringExtra("telepon");
        String strNoPel = getIntent().getStringExtra("nopel");

        TVnama.setText(strNama);
        TValamat.setText(strAlamat);
        TVtelp.setText(strNoTelp);
        TVnopel.setText(strNoPel);

        btnBack.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                Intent i=new Intent(getBaseContext(), MainActivity.class);
                startActivity(i);
            }
        });
    }
}