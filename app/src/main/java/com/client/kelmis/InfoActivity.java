package com.client.kelmis;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.client.kelmis.model.PenerimaBantuan;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class InfoActivity extends AppCompatActivity {

    ListView lvInfo;
    ArrayList<String> wordList = new ArrayList<>();
    public ArrayList<PenerimaBantuan> PBdata =  new ArrayList<>();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_info);

        lvInfo = findViewById(R.id.listViewInfo);
        Add();



    }
    private void UpdateList(){
        lvInfo.setAdapter(new ArrayAdapter(this, android.R.layout.simple_list_item_1, wordList));
        lvInfo.setSelected(true);

        lvInfo.setOnItemClickListener(new AdapterView.OnItemClickListener() {

            public void onItemClick(AdapterView arg0, View arg1, int arg2, long arg3) {
                final PenerimaBantuan data = PBdata.get(arg2);
                AlertDialog.Builder builder = new AlertDialog.Builder(InfoActivity.this);
                builder.setTitle("Detail Keluarga");
                builder.setMessage("\n\n" + "Nama Keluarga: " + data.getNama_keluarga() + "\n\n"
                        + "Alamat: " + data.getAlamat() + " \n\n"
                        + "RT: " + data.getRt() + " \n\n"
                        + "Status: " + data.getStatus() + " \n\n"
                        + "tanggal pendaftaran: " + data.getTanggal() + " \n\n");
                builder.create().show();
            }
        });

//        imgbtnLogout.setOnClickListener(new View.OnClickListener(){
//
//            @Override
//            public void onClick(View v) {
//                finish();
//                Intent i=new Intent(getBaseContext(), MainActivity.class);
//                startActivity(i);
//            }
//        });



        AlertDialog.Builder builder = new AlertDialog.Builder(InfoActivity.this);
    }

    private void Add() {
        String url = MainActivity.basic_url+"getInfo.php";
        Log.d("deb URL",url);
        PBdata.clear();
        StringRequest stringRequest= new StringRequest(Request.Method.GET, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                Log.d("deb respon", "ok");
                try {
                    JSONObject data = new JSONObject(response);
                    if (data.getString("result").equalsIgnoreCase("ok"))
                    {
                        Log.d("deb URL", "result ok");
                        JSONArray array = data.getJSONArray("data");
                        for (int j=0; j<array.length(); j++){
                            JSONObject def = array.getJSONObject(j);
                            PBdata.add(new PenerimaBantuan(def.getString("id"),
                                    def.getString("nama_kel"),
                                    def.getString("alamat"),
                                    def.getString("rt"),
                                    def.getString("status"),
                                    def.getString("tanggal")));
                            wordList.add(def.getString("nama_kel"));
                        }
                    }
                    UpdateList();
                    Log.d("debug", PBdata.toString());
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
        Log.d("deb sats size", PBdata.size()+"");
    }

}