package com.client.kelmis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;

public class PengaduanActivity extends AppCompatActivity {

    private EditText etNama, etAlamat, etTelepon, etNopelanggan, etJenispengaduan, etLatarbelakang;
    private Button btnSimpan;
    private String nama, alamat, telepon, nopelanggan, jenispengaduan, latarbelakang;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pengaduan);

        etNama = findViewById(R.id.et_Nama);
        etAlamat = findViewById(R.id.et_Alamat);
        etTelepon = findViewById(R.id.et_Telepon);
        etNopelanggan = findViewById(R.id.et_Nopelanggan);
        etJenispengaduan = findViewById(R.id.et_Jenispengaduan);
        etLatarbelakang = findViewById(R.id.et_Latarbelakang);

        btnSimpan = findViewById(R.id.btn_SimpanFormulir);

        btnSimpan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                nama = etNama.getText().toString();
                alamat = etAlamat.getText().toString();
                telepon = etTelepon.getText().toString();
                nopelanggan = etNopelanggan.getText().toString();
                jenispengaduan = etJenispengaduan.getText().toString();
                latarbelakang = etLatarbelakang.getText().toString();

                if (nama.trim().equals("")){
                    etNama.setError("Nama harus di isi");

                }
                else if (alamat.trim().equals("")){
                    etAlamat.setError("Alamat harus di isi");

                }
                else if (telepon.trim().equals("")){
                    etTelepon.setError("Telepon harus di isi");

                }
                else if (nopelanggan.trim().equals("")){
                    etNopelanggan.setError("No Pelanggan harus di isi");

                }
                else if (jenispengaduan.trim().equals("")){
                    etJenispengaduan.setError("Jenis Pengaduan harus di isi");

                }
                else if (latarbelakang.trim().equals("")){
                    etLatarbelakang.setError("Jenis Latar belakang harus di isi");
                }
                else{
                    CreateData();

                }
            }
        });


    }

    private void CreateData(){
        String url = MainActivity.basic_url+"inputPengaduan.php?"+
                "nama="+ nama +
                "&alamat=" + alamat  +
                "&telp=" + telepon +
                "&idp=" + nopelanggan +
                "&jenis=" + jenispengaduan +
                "&ket=" + latarbelakang ;
        Log.d("deb adu URL",url);

        StringRequest stringRequest= new StringRequest(Request.Method.GET, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                Log.d("deb respon", "ok");
                try {
                    JSONObject data = new JSONObject(response);
                    if (data.getString("result").equalsIgnoreCase("ok"))
                    {
                        Log.d("deb URL", "result ok");
//                        Toast.makeText(getBaseContext(),"terima kasih, data sudah direkam!",Toast.LENGTH_LONG).show();
                        Intent i=new Intent(getBaseContext(), KonfirmasiPengaduanActivity.class);
                        i.putExtra("nama", nama);
                        i.putExtra("alamat", alamat);
                        i.putExtra("telepon", telepon);
                        i.putExtra("nopel", nopelanggan);
                        startActivity(i);

                        finish();
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Toast.makeText(getBaseContext(),"err"+error.toString(),Toast.LENGTH_LONG).show();
                    }
                }
        );
        RequestQueue requestQueue = Volley.newRequestQueue(getBaseContext());
        requestQueue.add(stringRequest);

    }
}